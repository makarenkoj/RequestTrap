class RequestChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    logger.info 'Subscribed to RequestChannel'

    stream_from 'request_channel'
    # stream_from 'request'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    logger.info 'Unsubscribed to RequestChannel'
  end

  def speak(data)
    logger.info "RequestChannel, speak: #{data.inspect}"
  end
end
