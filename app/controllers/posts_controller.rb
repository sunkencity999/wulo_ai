class PostsController < ApplicationController
  def index
    @post = Post.find(params[:id])	  
  end

  def show
    @post = Post.all
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
    @post = Post.find(params[:id])	  
  end

  def destroy
	  @post = Post.find(params[:id])

	  if @post.destroy
		  flash[:notice] = "\"#{@post.title}\" was deleted successfully."
		  redirect_to posts_path
	  else
		  flash.now[:alert} = "There was an error deleting the post."
	      render :show
	  end
end
