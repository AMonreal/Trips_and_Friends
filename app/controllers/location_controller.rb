class LocationController < ApplicationController

    def new
    @location = Location.new
  end

  def create
    @location = Location.new(location.params)
  end

 def index
  @Locations = Locations.all
 end

 #  def update
 #  end

 #  def delete
 #  end

  def show
    set_location
  end

  private
  def location_params
    params.require(:location).permit(:city, :country, :user_id)
  end

  def set_location
    @location = Location.find(params[:id])
  end
end

