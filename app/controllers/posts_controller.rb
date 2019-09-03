class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  # add create method here
  def create
    @post = Post.new #creates a new Post instance
    @post.title = params[:title] #passes in parameters from the form
    @post.description = params[:description]
    @post.save #saves the record
    redirect_to post_path(@post) #redirecting to the new resource's show page
    #user who submits a new post would then like to view the successfully-created post.
  end
end
