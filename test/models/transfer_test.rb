# == Schema Information
#
# Table name: transfers
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  mouse_id   :integer
#  cage_id    :integer
#

require 'test_helper'

class TransferTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end


  test "transfers with no mouse should be invalid" do
     transfer = transfers(:one)
     transfer.mouse_id=nil
     assert transfer.invalid?
  end

test "transfers with no cage should be invalid" do
     transfer = transfers(:one)
     transfer.cage_id = nil
     assert transfer.invalid?
  end

end
