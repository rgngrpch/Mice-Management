# == Schema Information
#
# Table name: mice
#
#  id                 :integer          not null, primary key
#  tag_number         :integer
#  genome             :string
#  parent_information :integer
#  sex                :string
#  age                :integer
#  date_of_birth      :date
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :integer
#  cage_id            :integer
#  transfer_id        :integer
#

require 'test_helper'

class MouseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

test "mouce with no gnome should be invalid" do
     mouse = mice(:one)
     mouse.genome=nil
     assert mouse.invalid?
  end

test "mouce with no parent id should be invalid" do
     mouse = mice(:one)
     mouse.parent_information=nil
      assert mouse.invalid?

end



test "mouce with no sex should be invalid" do
     mouse = mice(:one)
     mouse.sex = nil
      assert mouse.invalid?

end

test "mouce with user should be valid" do
     mouse = mice(:one)
     mouse.user_id = 1
      assert mouse.valid?

end
test "mouce with cage should be valid" do
     mouse = mice(:one)
     mouse.cage_id = 1
      assert mouse.valid?

end

end
