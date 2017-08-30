class RemoveAgeFromMice < ActiveRecord::Migration
  def change
    remove_column :mice, :age, :integer
  end
end
