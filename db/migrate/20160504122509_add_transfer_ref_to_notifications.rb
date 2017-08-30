class AddTransferRefToNotifications < ActiveRecord::Migration
  def change
    add_reference :notifications, :transfer, index: true, foreign_key: true
  end
end
