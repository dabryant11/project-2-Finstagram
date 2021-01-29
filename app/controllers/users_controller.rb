class UsersController < ApplicationController
  before_action :user_helper, only: [:show, :edit, :update]
  
  def index
    @users = User.all
  end

  def show
  end 

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to users_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  # def create
  #   @user = User.find_by(name: params[:user][:name])
  #   # if @user && @user.authenticate(params[:user][:password])
  #   #   session [:user_id] = @user.id
  #   #   redirect_to user_path(@user)
  #   # else  
  #   #   redirect_to new_session_path
  #   # end 
  # end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      redirect_to users_path
    else
      flash[:messages] = @user.errors.full_messages
      redirect_to new_user_path
  end
end

  private 

  def user_helper
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :username, :email, :password)
  end
end


