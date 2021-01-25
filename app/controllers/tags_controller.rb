class TagsController < ApplicationController
  before_action :tag_helper, only: [:show, :edit, :update]
  
  def index
    @tags = Tag.all
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
    @tag = Tag.new
  end

  # def most_popular
  #   tag.pictures.sort_by do|tag|tag.pictures.length
  #     .length - 1
  #     .length - 2
  #     .length - 3
  #   end
  # end

  private 

  def tag_helper
    @tag = Tag.find(params[:id])
  end
end
