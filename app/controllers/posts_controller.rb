class PostsController < ApplicationController

  before_action :authorize, except: [:index, :show]

  def index
    @posts = Post.paginate(:page => params[:page], :per_page => 1).order('created_at DESC')
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to blog_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to blog_path
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to blog_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
