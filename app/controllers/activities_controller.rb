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

end
