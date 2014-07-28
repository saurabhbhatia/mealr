class WelcomeController < ApplicationController
  def index
  	@meals = Meal.order(availability: :desc).limit(5)
  end
end
