class PostsController < ApplicationController
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
    redirect_to post_path(@post)
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
