require 'test_helper'

class NotificationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
description
  status

  test "Notification description with no value should be invalid" do
     notification = notifications(:one)
     notification.description=nil
     assert notification.invalid?
  end

  test "Notification status with no value should be invalid" do
     notification = notifications(:one)
     notification.status=nil
     assert notification.invalid?
  end
end
