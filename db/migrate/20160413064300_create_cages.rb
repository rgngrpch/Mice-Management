class CreateCages < ActiveRecord::Migration
  def change
    create_table :cages do |t|
      t.string :cage_name

      t.timestamps null: false
    end
  end
end
