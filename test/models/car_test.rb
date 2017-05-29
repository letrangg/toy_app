require 'test_helper'

class CarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
    test "name should be present" do
  	@user.name = "    "
  	assert_not @user.valid?

  	test "car price should be more than zero" do
  	@car.price = 0
  	
  	assert_not 
end
