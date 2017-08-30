class AddMouseRefToCages < ActiveRecord::Migration
  def change
    add_reference :cages, :mouse, index: true, foreign_key: true
  end
end
