class WelcomeController < ApplicationController
  def index
    respond_to do |format|
      format.html { render :index, :layout => false }
    end
  end

  def digital
  end

  def radio
  end

  def code
  end

  def about
  end
end
