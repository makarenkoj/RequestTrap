class RequestsController < ApplicationController
  protect_from_forgery except: [:create]

  def index
    @requests = Request.where(trap_id: params[:trap_id])
  end

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
      render :trap, notice: I18n.t("activerecord.controllers.traps.create")
    else
      render :index
    end
  end
end
