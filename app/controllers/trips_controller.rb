class TripsController < ApplicationController

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    if @trip.save
      redirect_to '/trips' #à modifier y'avait écrit root_path avant
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
