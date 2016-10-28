class WelcomeController < ApplicationController
  def index
  	@g = Game.all
  end

  def about
  end

  def contact
  end

  def games
  end
end
