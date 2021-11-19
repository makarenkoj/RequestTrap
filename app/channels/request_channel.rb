class RequestChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    logger.info 'Subscribed to RequestChannel'

    stream_from "request_channel #{params[:trap_id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    logger.info 'Unsubscribed to RequestChannel'
  end

  def speak

    logger.info "RequestChannel, speak: #{data.inspect}"

    ActionCable.server.broadcast 'request_channel', message: 'Hello from server!'
  end
end
