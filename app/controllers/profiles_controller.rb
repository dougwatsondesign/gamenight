class ProfilesController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  	@event = Event.new
  end

  def calendar
  	@events = Event.all
  	@event = Event.new
  end
end
