class UsersController < ApplicationController

  def show
    set_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user.params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to Friends & Trips !"
      redirect_to @user
    else
      render :new
    end
  end

  def edit
    set_user
  end

  def index
    @users = User.all
  end

  def localisation
  @users = User.all
  @hash = Gmaps4rails.build_markers(@users) do |user, marker|
  marker.lat user.latitude
  marker.lng user.longitude
end
  end

   private
  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :avatar, :location_id, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
