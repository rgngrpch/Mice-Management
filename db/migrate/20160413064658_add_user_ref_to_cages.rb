class AddUserRefToCages < ActiveRecord::Migration
  def change
    add_reference :cages, :user, index: true, foreign_key: true
  end
end
