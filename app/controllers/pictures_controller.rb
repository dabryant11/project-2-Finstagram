class PicturesController < ApplicationController
  before_action :picture_helper, only: [:show, :edit, :update ]
  
  def index
    @pictures = Picture.all
  end

  def show
  end

  def edit
  end

  def update
    @picture.update(picture_params)
    redirect_to pictures_path
  end




  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to pictures_path
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.create(picture_params(:title, :image_url, :user_id))
    redirect_to '/pictures'
  end

  private 

  def picture_helper
    @picture = Picture.find(params[:id])
  end

  def picture_params(*args)
    params.require(:picture).permit(:title, :image_url, :user_id)
  end
end
