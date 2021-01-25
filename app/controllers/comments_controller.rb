class CommentsController < ApplicationController

  before_action :comment_helper, only: [:show, :edit, :update]
  
  def index
    @comments = Comment.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

  def new
    @comment = Comment.new
  end

  def create
  end 

  private 

  def comment_helper
    @comment = Comment.find(params[:id])
  end
end
