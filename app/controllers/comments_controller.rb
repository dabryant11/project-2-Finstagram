class CommentsController < ApplicationController

  before_action :comment_helper, only: [:show, :edit, :update, :destroy, :update]
  
  def index
    @comments = Comment.all
  end

  def show
  end

  def edit
  end

  def update
  end

  

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
      redirect_to picture_path(@comment.picture_id)
  end 

  def destroy
    @comment.destroy
    redirect_to comments_path
  end

  private 

  def comment_helper
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:user_id, :picture_id, :content)
  end
end
