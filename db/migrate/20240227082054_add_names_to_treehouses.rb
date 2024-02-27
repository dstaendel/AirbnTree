class AddNamesToTreehouses < ActiveRecord::Migration[7.1]
  def change
    add_column :treehouses, :name, :string
  end
end
