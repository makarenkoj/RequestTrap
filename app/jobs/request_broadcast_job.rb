class RequestBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast "/#{message['trap_id']}/request", message: render_message(message)
  end

  def render_message(message)
    ApplicationController.renderer.render(partial: 'requests/request', locals: { message: message })
  end
end
