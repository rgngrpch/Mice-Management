class AddProductionRefToNotifications < ActiveRecord::Migration
  def change
    add_reference :notifications, :production, index: true, foreign_key: true
  end
end
