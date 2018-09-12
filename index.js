
// Create WebSocket connection.
const socket = new WebSocket('ws://localhost:1235/');

// Connection opened
socket.addEventListener('open', function (event) {
    socket.send('misc');
});

// Listen for messages
socket.addEventListener('message', function (event) {
    console
    eval.call(window,event.data);
});
