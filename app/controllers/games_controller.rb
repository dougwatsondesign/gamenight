class GamesController < ApplicationController
	before_action :set_game, only: [:show, :edit, :update, :destroy]
	def new
      @game = Game.new
    end

    def show
    	@e = Event.all
    end

    def index
    	@g = Game.all
  	end

  	def edit
  	end

	def create
	    @game = Game.new(game_params)

		    respond_to do |format|
		      if @game.save
		        format.html { redirect_to @game, notice: 'Game was successfully created.' }
		      else
		        format.html { render :new }
		      end
		    end
	  	end
	

  	def update
        if @game.update(game_params)
        	redirect_to @game, notice: 'Game was successfully updated.'
     	else
        	render :edit
      	end
  	end



  	def destroy
	      @game.destroy
	    respond_to do |format|
	      format.html { redirect_to games_url, notice: 'Game was successfully destroyed.' }
	    end
	end
end

  	private

		def game_params
		    params.require(:game).permit(:games_type, :category, :weight, :age, :players, :table_size, :title, :description)
		end
	   	def set_game
	    	@game = Game.find(params[:id])
		end
	



