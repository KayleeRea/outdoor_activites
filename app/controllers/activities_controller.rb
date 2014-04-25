class ActivitiesController < ApplicationController
  def index
    @activities=Activity.all
  end

  def new
  end

  def create
    Activity.create(activity: params[:activity])
    redirect_to '/activities'
  end

  def edit
    @activities = Activity.find(params[:id])
  end

  def update
    activity = Activity.find(params[:id])
    new = params[:edit_activity]
    activity.update(activity: new)
    redirect_to '/activities'
  end

  def destroy
    activity =Activity.find(params[:id])
    activity.destroy
    redirect_to '/activities'
  end

end