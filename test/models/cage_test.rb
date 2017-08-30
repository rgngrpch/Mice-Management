require 'test_helper'

class CageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  # setup do
  #   @cage = cages(:one)
  # end

  # test "Please enter something, It cannot be empty!" do
  #   test = authors(:one)
  # 	test.cage_name = "   "
  # 	assert test.invalid?
  # end

  #   test "How can email be empty?!" do
  #   test = authors(:one)
  # 	test.cage_name= nil
  # 	assert test.invalid?
  # end


test "cage with no value should be invalid" do
     cage = cages(:one)
     cage.cage_name=nil
     assert cage.invalid?
  end

end
