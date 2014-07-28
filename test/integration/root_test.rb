require 'test_helper'
require 'minitest/autorun'

class RootTest < ActionController::TestCase
	test "should route to root" do
		assert_routing "/", {controller: "welcome", action: "index"}
	end
end