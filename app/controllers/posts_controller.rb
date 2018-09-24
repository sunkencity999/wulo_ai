class PostsController < ApplicationController
  def index
  end

  def show
  end


  def new
    @post = Post.new
  end

  def create 
    @post = Post.new(params.require(:post).permit(:title, :body))
    if @post.save
	    flash[:notice] = "Journal entry was saved, great job!"
	    redirect_to @post
    else
	    flash[:error] = "There was an error saving this journal entry."
	    render :new
  def edit
  end
end
