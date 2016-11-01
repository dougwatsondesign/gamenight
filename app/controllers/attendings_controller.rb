class AttendingsController < ApplicationController
	before_action :authenticate_user!

  def create
    @event = Event.find(params[:event_id])
    @event.attendings.where(user_id: current_user.id).first_or_create
      redirect_to request.referrer, notice: "You're attending this event!"
  end

  def destroy
    @event = Event.find(params[:event_id])
    @event.attendings.find_by(user_id: current_user.id).destroy
    redirect_to request.referrer
  end
end
