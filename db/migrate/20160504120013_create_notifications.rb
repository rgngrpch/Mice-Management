class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.text :description
      t.integer :status

      t.timestamps null: false
    end
  end
end
