class SessionsController < ApplicationController
  before_action :logged_in_redirect, only: [:new, :create]
  
  def new
  end

  def create
    username = params[:session][:username]
    user = User.find_by_username(username)
    if user.present? && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "You are logged in! Have fun chatting"
      redirect_to root_path
    else
      flash.now[:error] = "That username and password combination is invalid"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'You are logged out'
    redirect_to login_path
  end

  private

  def logged_in_redirect
    if logged_in?
      flash[:error] = 'You are already logged in'
      redirect_to root_path
    end
  end
end