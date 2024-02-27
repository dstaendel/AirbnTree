puts "Destroying ..."
Treehouse.destroy_all

puts "creating ..."

Treehouse.create(name: "Treehouse of Horror", tree_type: "Oak tree", total_occupancy: 5, summary: "Simpsons themed treehouse", address: "Springfield", price: 100)
Treehouse.create(name: "Cabin in the woods", tree_type: "Redwood tree", total_occupancy: 5, summary: "Haunted treehouse", address: "Vancouver", price: 100)
Treehouse.create(name: "TreeTop Treasure", tree_type: "Palmtree", total_occupancy: 4, summary: "Luxury treehouse by the coast", address: "Uvita, Costa Rica", price: 300)
Treehouse.create(name: "The Canopy Studio", tree_type: "Maple tree", total_occupancy: 2, summary: "Small and cozy treestudio", address: "Ontario", price: 150)
Treehouse.create(name: "The Leafy Lagoon", tree_type: "Oak tree", total_occupancy: 5, summary: "Beatiful treehouse with a lagoon view", address: "Talcahuano, Chile", price: 170)
Treehouse.create(name: "The Hideout Heaven", tree_type: "Beech tree", total_occupancy: 4, summary: "Calm and cozy treehouse", address: "Nam Dinh, Vietnam", price: 100)
Treehouse.create(name: "The Wildwood Retreat", tree_type: "Ash tree", total_occupancy: 2, summary: "Perfect retreat treehouse for couples", address: "Arizona", price: 200)
Treehouse.create(name: "The Treetop Outpost", tree_type: "Redwood tree", total_occupancy: 2, summary: "Calm and beatiful treehouse", address: "Stuttgart", price: 100)
Treehouse.create(name: "The Leafy Lookout", tree_type: "Oak tree", total_occupancy: 3, summary: "The best treehouse in Congo", address: "Congo Forest", price: 80)
Treehouse.create(name: "The Arboreal Adventure", tree_type: "Cedar tree", total_occupancy: 4, summary: "Perfect treeehouse to bring the kids", address: "Minesota", price: 100)


User.create(first_name: "Bruce", last_name: "Smith", email: "smith@email.com", password: "123456")
User.create(first_name: "Carl", last_name: "Anderson", email: "anderson@email.com", password: "123456")




puts `Yes! #{@treehouses.size} and two users have been created!`
