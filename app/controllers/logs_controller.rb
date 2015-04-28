class LogsController < ApplicationController

  def index
    @list = Log.all.order(created_at: :asc).last(20)
    render json: @list
  end
end