class VenuesController < ApplicationController
	before_action :set_venue, only: [:show, :edit, :update, :destroy]
	def new
      @venue = Venue.new
    end

    def show
    end

    def index
    	@v = Venue.all
  	end

	def create
	    @venue = Venue.new(venue_params)

		    respond_to do |format|
		      if @venue.save
		        format.html { redirect_to @venue, notice: 'Venue was successfully created.' }
		      else
		        format.html { render :new }
		      end
		    end
	  	end

  	def update
	    respond_to do |format|
	        if @venue.update(venue_params)
	          format.html { redirect_to @venue, notice: 'Venue was successfully updated.' }
	     	else
	        format.html { render :edit }
	      	end
    	end
  	end

  	private

	 def venue_params
	    params.require(:venue).permit(:name, :address, :phone, :website, :venues_type)
	 end
   	 def set_venue
    	@venue = Venue.find(params[:id])
	 end
	end
