puts "Destroying ..."
Monument.destroy_all



puts "creating ..."
Treehouse.new()


puts "done creating

t.string "tree_type"
t.integer "total_occupancy"
t.text "summary"
t.string "address"
t.integer "price"
t.float "latitude"
t.float "longitude"
t.datetime "created_at", null: false
t.datetime "updated_at", null: false
