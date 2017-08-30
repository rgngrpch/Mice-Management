class AddTransferRefToMice < ActiveRecord::Migration
  def change
    add_reference :mice, :transfer, index: true, foreign_key: true
  end
end
