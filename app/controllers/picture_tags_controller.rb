class PictureTagsController < ApplicationController
  
  before_action :picture_tag_helper, only: [:show, :edit, :update]
  
  def index
    @picture_tags = PictureTag.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

  private 

  def picture_tag_helper
    @picture_tag = PictureTag.find(params[:id])
  end
end
