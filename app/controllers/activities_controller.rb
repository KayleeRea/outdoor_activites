class ActivitiesController < ApplicationController
  def index
    @activities=Activity.all
  end

  def new
  end

  def create
    @activities=Activity.create(activity: params[:activity])
    redirect_to '/'
  end

  def edit
    @activities=Activity.find(params[:id])
  end

  def update
    activity = Activity.find(params[:id])
    new = params[:edit_activity]
    activity.update(activity: new)
    redirect_to '/'
  end

end