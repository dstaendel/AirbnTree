puts "Destroying ..."
Treehouse.destroy_all



puts "creating ..."
Treehouse.new(name: "Treehouse of Horror", tree_type: "Oak tree", total_occupancy: 5, summary: "Simpsons themed treehouse", address: "Springfield", price: 100)
Treehouse.new(name: "Cabin in the woods", tree_type: "Redwood tree", total_occupancy: 5, summary: "Haunted treehouse", address: "Vancouver", price: 100)


puts "done creating"
