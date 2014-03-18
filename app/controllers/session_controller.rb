class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    
    if params[:password] == 'tacocat'
      session[:admin] = true
      redirect_to blog_path
    else
      render :new
    end
  end

  def destroy
    session[:admin] = false
    redirect_to blog_path
  end
end
