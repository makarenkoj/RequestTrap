import consumer from "./consumer"

consumer.subscriptions.create("RequestChannel", {
    // received: function({ html }) {
    //   $("#message").prepend(html)},

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
    // $('#message').append('<p class="received"> ' + data.message + '</p>'),
    console.log('Recived data: ' + data)
    // document.getElementById('messages').innerHTML += `<div class="message" >${data.message}</div>`
  },

  // install() {
  //   window.addEventListener("focus", this.update)
  //   window.addEventListener("blur", this.update)
  //   document.addEventListener("turbolinks:load", this.update)
  //   document.addEventListener("visibilitychange", this.update)
  // },

  speak: function() {
    return this.perform('speak', { message: message });
  }
});

// submit_messages = function () {
//   $('#message_content').on('keydown', function (event) {
//     if (event.keyCode == 13) {
//       $('input').click()
//       event.target.value = ''
//       event.preventDefault()
//     }
//   })
// }
