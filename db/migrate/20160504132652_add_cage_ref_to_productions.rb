class AddCageRefToProductions < ActiveRecord::Migration
  def change
    add_reference :productions, :cage, index: true, foreign_key: true
  end
end
