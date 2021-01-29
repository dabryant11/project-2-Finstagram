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
  #   tag.pictures.length.sort_by do|p|
  #     p[.length - 1].name
      
  #   end
  # end

  def create  
    @tag = Tag.create(tag_params)
    redirect_to tags_path
  end

  private 

  def tag_helper
    @tag = Tag.find(params[:id])
  end

  def tag_params
    params.require(:tag).permit(:name)
  end
end
