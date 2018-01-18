class TripsController < ApplicationController

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip.params)
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
  end

  private

  def trip_params
    params.require(:trip).permit(:beginning_date, :end_date, :location_id, :user_id, :activities)
  end

  def set_trip
    @trip = Trip.find(params[:id])
  end
end
