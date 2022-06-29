class MainpagesController < ApplicationController
  def index
  end

  def show
    @search = User.ransack(params[:q])
    @users = @search.result
  end
end
