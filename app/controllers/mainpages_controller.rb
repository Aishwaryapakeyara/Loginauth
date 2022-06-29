class MainpagesController < ApplicationController
  def index
  end

  def show
    @search = User.ransack(params[:q])
    @users = @search.result.page(params[:page]).per(2)
  end
end
