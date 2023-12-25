class PostsController < ApplicationController

  def index
    @post = Post.all()
  end


  def new

  end

  def show
    @post = Post.find(params[:id])

  end

  def showAll
    begin
      @post = Post.all()
    rescue ActiveRecord::RecordNotFound
      render html: "Id not found"
    end

  end

  def create
    title = params[:title].to_s
    content = params[:content].to_s


    @post = Post.new(title: title, body: content)
    if @post.save
        redirect_to "/posts/#{@post.id}"

    else
      render :new
    end

  end
end
