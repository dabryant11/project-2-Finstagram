class PictureTagsController < ApplicationController
  
  before_action :picture_tag_helper, only: [:show, :edit, :update, :destroy]
  
  def index
    @picture_tags = PictureTag.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def new 
    @picture_tag = PictureTag.new
  end 

  def create  
    @picture_tag = PictureTag.create(picture_tag_params)
    redirect_to pictures_path
  end

  def destroy
    @picture_tags.destroy 
    redirect_to picture_tags_path
  end

  private 

  def picture_tag_helper
    @picture_tag = PictureTag.find(params[:id])
  end

  def picture_tag_params(*args)
    params.require(:picture_tag).permit(:tag_id, :picture_id)
  end
end
