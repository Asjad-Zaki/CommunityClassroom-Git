const express = require('express');
const http = require('http');
const socketIo = require('socket.io');
const path = require('path');

const app = express();
const server = http.createServer(app);
const io = socketIo(server);

// Serve static files from the "public" directory
app.use(express.static(path.join(__dirname, 'public')));

// Store users and their rooms
const users = {};

io.on('connection', (socket) => {
  console.log('A user connected: ' + socket.id);

  // Listen for 'set nickname and join room' event
  socket.on('set nickname and join room', ({ nickname, room }) => {
    users[socket.id] = { nickname, room };
    socket.join(room);
    io.to(room).emit('chat message', {
      nickname: 'System',
      msg: `${nickname} has joined the room.`,
      timestamp: new Date().toLocaleTimeString(),
    });
  });

  // Listen for chat messages
  socket.on('chat message', (msg) => {
    const user = users[socket.id];
    if (user) {
      io.to(user.room).emit('chat message', {
        nickname: user.nickname,
        msg,
        timestamp: new Date().toLocaleTimeString(),
      });
    }
  });

  // Handle user disconnect
  socket.on('disconnect', () => {
    const user = users[socket.id];
    if (user) {
      io.to(user.room).emit('chat message', {
        nickname: 'System',
        msg: `${user.nickname} has left the room.`,
        timestamp: new Date().toLocaleTimeString(),
      });
      delete users[socket.id];
    }
    console.log('User disconnected: ' + socket.id);
  });
});

// Start the server
const PORT = process.env.PORT || 3000;
server.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
