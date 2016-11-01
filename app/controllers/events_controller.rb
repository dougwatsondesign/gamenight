class EventsController < ApplicationController
	before_action :set_event, only: [:show, :edit, :update, :destroy]
	def new
      	@event = Event.new
    end

    def show
    end

    def index
    	@e = Event.all
  	end

  	def edit
  	end

  	def create
	    @event = Event.new(event_params)

	    respond_to do |format|
	      if @event.save
	        format.html { redirect_to @event, notice: 'Game night was successfully created! Play on!' }
	      else
	        format.html { render :new }
	      end
	    end
  	end

  	def update
	    respond_to do |format|
	        if @event.update(event_params)
	          format.html { redirect_to @event, notice: 'Game night was successfully updated.' }
	     	else
	          format.html { render :edit }
	      	end
    	end
  	end

  	def destroy
	      @event.destroy
	    respond_to do |format|
	      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
	    end
	end

  	private

	 def event_params
	    params.require(:event).permit(:game, :user_id, :date, :time, :snacks, :variation, :teach, :location, :icon, :description, :title)
	 end

	 def set_event
    	@event = Event.find(params[:id])
	 end
end
