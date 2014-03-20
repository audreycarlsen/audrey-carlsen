class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to blog_path
    else
      redirect_to log_in_path, :notice => "That was wrong."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to log_in_path, :notice => "Logged out."
  end
end
