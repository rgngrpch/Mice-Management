class CreateMice < ActiveRecord::Migration
  def change
    create_table :mice do |t|
      t.integer :tag_number
      t.string :genome
      t.integer :parent_information
      t.string :sex
      t.date :date_of_birth

      t.timestamps null: false
    end
  end
end
