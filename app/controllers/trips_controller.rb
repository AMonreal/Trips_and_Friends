class TripsController < ApplicationController

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    authorize @trip
    @trip.user = current_user
    if trip.save
      redirect_to root_path #à modifier
    else
      render :new
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
    @trip = Trip.find(params[:id])
  end

  private

  def trip_params
    params.require(:trip).permit(:beginning_date, :end_date, :location_id, :user_id, :activities)
  end

  # def set_trip
  #   @trip = Trip.find(params[:id])
  # end
end
