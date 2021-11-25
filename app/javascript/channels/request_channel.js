import consumer from "./consumer"

consumer.subscriptions.create("RequestChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log('Connected to RequestChannel')
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
    console.log('Disconnected to RequestChannel')
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    $('#messages').prepend(data.message)
    console.log('Recived data: ' + data)
  },

  speak: function() {
    return this.perform('speak', { message: message });
  }
});
