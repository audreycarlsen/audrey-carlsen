class PostsController < ApplicationController
  def index
    # @posts = Post.all.order('created_at DESC')
    @posts = Post.paginate(:page => params[:page], :per_page => 1)
  end

  def show
    @post = Post.find(params[:id])
  end
end
