class AddUserToTreehouses < ActiveRecord::Migration[7.1]
  def change
    add_reference :treehouses, :user, null: false, foreign_key: true
  end
end