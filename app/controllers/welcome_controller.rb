class WelcomeController < ApplicationController
  def index
  	@g = Game.all
  	@e = Event.all
  end

  def about
  end

  def contact
  end

  def games
  end

end
