class TripsController < ApplicationController

  def new
    @trip = Trip.new
  end

 def create
  @trip = Trip.new(trip_params)
  @trip.save
 end

  def index
    @trips = Trip.all
  end

  def update
    @trip = Trip.find(params[:id])
    @trip.update(params[:trip])
  end

  def delete
  end

  def show
    @trip = Trip.find(params[:id])
  end

 private

  def trip_params
    params.permit(:id, :beginning_date, :end_date, :title, :description, :location_id, :user_id, :activities, :picture)
  end

end
