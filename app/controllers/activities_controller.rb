class ActivitiesController < ApplicationController

    def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity.params)
  end

  def index
    @activities = Activity.all
  end

  def update
  end

  def delete
  end

  def show
    set_activity
  end

  private
  def activity_params
    params.require(:activity).permit(:type, :name, :rating, :location_id, :user_id,)
  end

  def set_activity
    @activity = Activity.find(params[:id])
  end
end
end
