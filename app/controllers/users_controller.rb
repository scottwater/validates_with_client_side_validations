class UsersController < ApplicationController
  def index
    @count = User.count
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new params[:user]
    if @user.save
      render :text => "User Created"
    else
      render :new
    end
  end

end
