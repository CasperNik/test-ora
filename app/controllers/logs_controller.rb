class LogsController < ApplicationController

  def index
    @list = Log.all.order(created_at: :desc).limit(20)
    render json: @list
  end
end