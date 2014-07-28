require 'test_helper'
require 'minitest/autorun'

class WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get last 5 meals sorted by available_date" do
  	get :index
  	assert_response :success
  	expected_response = [meals(:one), meals(:two), meals(:three), meals(:four), meals(:five)]
  	assert_equal expected_response, assigns(:meals)
  	assert_equal 5, assigns(:meals).length
  end
end
