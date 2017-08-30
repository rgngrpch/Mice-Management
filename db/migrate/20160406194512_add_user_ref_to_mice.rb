class AddUserRefToMice < ActiveRecord::Migration
  def change
    add_reference :mice, :user, index: true, foreign_key: true
  end
end
