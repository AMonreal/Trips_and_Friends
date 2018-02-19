class UsersController < ApplicationController


  def index
  @users = User.all         # GET /users
  end

  def show
  @user = User.find(params[:id])
  end

  def new
  @user = User.new          # GET /users/new
  end

  def create        # POST /users
    @user = User.new(params[:user])
    @user.save
  end

  def edit          # GET /users/:id/edit
    @user = User.find(params[:id])
  end

  def update        # PATCH /users/:id
    @user = User.find(params[:id])
    @user.update(params[:user])
  end

  def delete       # DELETE /users/:id
    @user = User.find(params[:id])
    @user.destroy
  end


   private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :avatar, :password, :password_confirmation)
  end

  # def set_user
  #   @user = User.find(params[:id])
  # end

end


