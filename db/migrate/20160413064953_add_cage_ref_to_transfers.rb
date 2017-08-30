class AddCageRefToTransfers < ActiveRecord::Migration
  def change
    add_reference :transfers, :cage, index: true, foreign_key: true
  end
end
