class AddCageRefToMice < ActiveRecord::Migration
  def change
    add_reference :mice, :cage, index: true, foreign_key: true
  end
end
