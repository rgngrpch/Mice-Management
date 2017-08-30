class AddMouseTagNumberToProductions < ActiveRecord::Migration
  def change
    add_column :productions, :mouse_tag_number, :integer
  end
end
