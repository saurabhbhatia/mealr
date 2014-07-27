class WelcomeController < ApplicationController
  def index
  	@meals = Meal.all
  end
end
