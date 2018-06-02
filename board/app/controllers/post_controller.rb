class PostController < ApplicationController

  def index

   @post =  Post.page params[:page]

  end
  def post
    @post = Post.new
    @post.model_id = current_model.id
    @post.title = params[:title]
    @post.content = params[:content]
    @post.save


    redirect_to '/'

  end
  def comment
    @post = Post.find(params[:id])
    @post.comments.create(content: params[:input_comment], model_id: current_model.id)

    redirect_to '/post/edit/'+ params[:id]

  end
  def edit
    @post = Post.find(params[:id])

  end
  def update
    @post = Post.find(params[:id])
    @post.title = params[:title]
    @post.content = params[:content]
    @post.save

    redirect_to '/'
  end
  def delete
    Post.find(params[:id]).destroy

    redirect_to '/'

  end
end
