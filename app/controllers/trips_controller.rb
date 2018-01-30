class TripsController < ApplicationController

  def new
    @trip = Trip.new
  end

 def create
    @trip = Trip.new(trip_params)
    @user = current_user
    @trip.user_id = @user
    if @trip.save!
      redirect_to '/trips'
    else
      render :create
    end
  end

  def index
    @trips = Trip.all
  end

  def update
  end

  def delete
  end

  def show
    set_trip
    # authorize trip
    @activities = Activity.where(trip: @trip)
    if @trip.activities.find_by_user_id(current_user.id)
      @activity = @trip.activities.find_by_user_id(current_user.id)
    else
      @trip = Trip.new
  end
  @activities = Activity.where(trip: @trip)
  @activity = Activity.new
end

  def trip_params
    params.permit(:beginning_date, :end_date, :title, :description, :location_id, :user_id, :activities)
  end

  private :trip_params

  def set_trip
    @trip = Trip.find(params[:id])
  end
end
