require 'test_helper'

class ProductionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end



 test "production status with no value should be invalid" do
     production = productions(:one)
     production.mouse_genome=nil
     assert production.invalid?
  end

   test "production status with no value should be invalid" do
     production = productions(:one)
     production.mother_tag_number=nil
     assert production.invalid?
  end

end
