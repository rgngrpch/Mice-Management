class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.string :mouse_genome
      t.integer :mother_tag_number

      t.timestamps null: false
    end
  end
end
