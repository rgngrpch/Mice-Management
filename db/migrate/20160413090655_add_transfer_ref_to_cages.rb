class AddTransferRefToCages < ActiveRecord::Migration
  def change
    add_reference :cages, :transfer, index: true, foreign_key: true
  end
end
