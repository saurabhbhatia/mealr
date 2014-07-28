require 'test_helper'
require 'minitest/autorun'

class MealTest < ActiveSupport::TestCase
	def valid_params
		{ name: "Pizza", chef_id: 1, meal_type_id: 1, food_preference_id: 1, availability: Time.now }
	end

	test "should be a valid_meal" do
		meal = Meal.new valid_params
		assert meal.valid?, "Can't create with valid params: #{meal.errors.messages}"
	end

	test "not_valid_without_name" do
		params = valid_params.clone
    	params.delete :name
    	meal = Meal.new params

    	refute meal.valid?, "Can't be valid without name"
    	assert meal.errors[:name].present?, "Missing error when without name"
	end
end
