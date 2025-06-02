// public/client.js
const socket = io();

const form = document.getElementById('chat-form');
const input = document.getElementById('message-input');
const messages = document.getElementById('messages');

// Listen for form submission to send messages
form.addEventListener('submit', (e) => {
  e.preventDefault();
  if (input.value.trim()) {
    // Emit the chat message to the server
    socket.emit('chat message', input.value);
    input.value = '';
  }
});

// Listen for incoming chat messages from the server
socket.on('chat message', (msg) => {
  const item = document.createElement('li');
  item.textContent = msg;
  messages.appendChild(item);
  // Scroll to the bottom of the list
  window.scrollTo(0, document.body.scrollHeight);
});
// Inside the 'chat message' event listener
socket.on('chat message', ({ nickname, msg, timestamp }) => {
    const item = document.createElement('li');
    item.textContent = `${timestamp} - ${nickname}: ${msg}`;
    messages.appendChild(item);
    window.scrollTo(0, document.body.scrollHeight);
  });

  // Listen for 'notification' events
socket.on('notification', (message) => {
    const item = document.createElement('li');
    item.textContent = message;
    item.style.fontStyle = 'italic';
    messages.appendChild(item);
    window.scrollTo(0, document.body.scrollHeight);
  });
  
  