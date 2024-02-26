class CreateTreehouses < ActiveRecord::Migration[7.1]
  def change
    create_table :treehouses do |t|
      t.string :tree_type
      t.integer :total_occupancy
      t.text :summary
      t.string :address
      t.integer :price
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
