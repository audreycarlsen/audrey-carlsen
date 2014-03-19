class SessionController < ApplicationController
  def new
  end

  def create
    if params[:password] == 'tacocat'
      session[:audrey] = true
      redirect_to blog_path
    else
      render :new
    end
  end

  def destroy
    session[:audrey] = false
    redirect_to blog_path
  end
end
