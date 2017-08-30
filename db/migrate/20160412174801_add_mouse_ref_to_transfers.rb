class AddMouseRefToTransfers < ActiveRecord::Migration
  def change
    add_reference :transfers, :mouse, index: true, foreign_key: true
  end
end
