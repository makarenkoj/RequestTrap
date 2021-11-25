class RequestChannel < ApplicationCable::Channel
  def subscribed
    logger.info 'Subscribed to RequestChannel'

    stream_from "request_channel"
  end

  def unsubscribed
    logger.info 'Unsubscribed to RequestChannel'
  end

  def speak(data)
    logger.info "RequestChannel, speak: #{data.inspect}"
  end
end
