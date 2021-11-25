class RequestsController < ApplicationController
  protect_from_forgery except: [:create]

  def index
    @requests = Request.where(trap_id: params[:trap_id])
  end

  def show; end

  def create
    @request = Request.create({
      remote_ip: request.remote_ip,
      method: request.method,
      scheme: request.scheme,
      query_string: request.query_string,
      query_params: request.params,
      cookies: request.cookies,
      headers: request.headers,
      trap_id: params[:trap_id]
    })

    if @request.save
      render :trap, notice: I18n.t('activerecord.controllers.traps.create')

      ActionCable.server.broadcast('request_channel', message: render_to_string(partial: 'request', locals: { request: @request }))
    else
      render :index, notice: I18n.t('activerecord.controllers.traps.eror')
    end
  end
end
