require 'open-uri'

puts "Destroying ..."
Treehouse.destroy_all

puts "creating ..."

file = URI.open("https://png.pngtree.com/png-vector/20230728/ourmid/pngtree-treehouse-clipart-cartoon-vector-illustration-of-tree-house-png-image_6813959.png")
treehouse1 = Treehouse.create(name: "Treehouse of Horror", tree_type: "Oak tree", total_occupancy: 5, summary: "Simpsons themed treehouse", address: "Springfield", price: 100)
treehouse1.photos.attach(io: file, filename: "example1.png", content_type: "image/png")
treehouse1.save

file = URI.open("https://png.pngtree.com/png-vector/20230728/ourmid/pngtree-treehouse-clipart-cartoon-vector-illustration-of-tree-house-png-image_6813959.png")
treehouse2 = Treehouse.create(name: "Cabin in the woods", tree_type: "Redwood tree", total_occupancy: 5, summary: "Haunted treehouse", address: "Vancouver", price: 100)
treehouse2.photos.attach(io: file, filename: "example2.png", content_type: "image/png")
treehouse2.save

file = URI.open("https://png.pngtree.com/png-vector/20230728/ourmid/pngtree-treehouse-clipart-cartoon-vector-illustration-of-tree-house-png-image_6813959.png")
treehouse3 = Treehouse.create(name: "TreeTop Treasure", tree_type: "Palmtree", total_occupancy: 4, summary: "Luxury treehouse by the coast", address: "Uvita, Costa Rica", price: 300)
treehouse3.photos.attach(io: file, filename: "example3.png", content_type: "image/png")
treehouse3.save

file = URI.open("https://png.pngtree.com/png-vector/20230728/ourmid/pngtree-treehouse-clipart-cartoon-vector-illustration-of-tree-house-png-image_6813959.png")
treehouse4 = Treehouse.create(name: "The Canopy Studio", tree_type: "Maple tree", total_occupancy: 2, summary: "Small and cozy treestudio", address: "Ontario", price: 150)
treehouse4.photos.attach(io: file, filename: "example4.png", content_type: "image/png")
treehouse4.save

file = URI.open("https://png.pngtree.com/png-vector/20230728/ourmid/pngtree-treehouse-clipart-cartoon-vector-illustration-of-tree-house-png-image_6813959.png")
treehouse5 = Treehouse.create(name: "The Leafy Lagoon", tree_type: "Oak tree", total_occupancy: 5, summary: "Beatiful treehouse with a lagoon view", address: "Talcahuano, Chile", price: 170)
treehouse5.photos.attach(io: file, filename: "example5.png", content_type: "image/png")
treehouse5.save

file = URI.open("https://png.pngtree.com/png-vector/20230728/ourmid/pngtree-treehouse-clipart-cartoon-vector-illustration-of-tree-house-png-image_6813959.png")
treehouse6 = Treehouse.create(name: "The Hideout Heaven", tree_type: "Beech tree", total_occupancy: 4, summary: "Calm and cozy treehouse", address: "Nam Dinh, Vietnam", price: 100)
treehouse6.photos.attach(io: file, filename: "example6.png", content_type: "image/png")
treehouse6.save

file = URI.open("https://png.pngtree.com/png-vector/20230728/ourmid/pngtree-treehouse-clipart-cartoon-vector-illustration-of-tree-house-png-image_6813959.png")
treehouse7 = Treehouse.create(name: "The Wildwood Retreat", tree_type: "Ash tree", total_occupancy: 2, summary: "Perfect retreat treehouse for couples", address: "Arizona", price: 200)
treehouse7.photos.attach(io: file, filename: "example7.png", content_type: "image/png")
treehouse7.save

file = URI.open("https://png.pngtree.com/png-vector/20230728/ourmid/pngtree-treehouse-clipart-cartoon-vector-illustration-of-tree-house-png-image_6813959.png")
treehouse8 = Treehouse.create(name: "The Treetop Outpost", tree_type: "Redwood tree", total_occupancy: 2, summary: "Calm and beatiful treehouse", address: "Stuttgart", price: 100)
treehouse8.photos.attach(io: file, filename: "example8.png", content_type: "image/png")
treehouse8.save

file = URI.open("https://png.pngtree.com/png-vector/20230728/ourmid/pngtree-treehouse-clipart-cartoon-vector-illustration-of-tree-house-png-image_6813959.png")
treehouse9 = Treehouse.create(name: "The Leafy Lookout", tree_type: "Oak tree", total_occupancy: 3, summary: "The best treehouse in Congo", address: "Congo Forest", price: 80)
treehouse9.photos.attach(io: file, filename: "example9.png", content_type: "image/png")
treehouse9.save

file = URI.open("https://png.pngtree.com/png-vector/20230728/ourmid/pngtree-treehouse-clipart-cartoon-vector-illustration-of-tree-house-png-image_6813959.png")
treehouse10 = Treehouse.create(name: "The Arboreal Adventure", tree_type: "Cedar tree", total_occupancy: 4, summary: "Perfect treeehouse to bring the kids", address: "Minesota", price: 100)
treehouse10.photos.attach(io: file, filename: "example10.png", content_type: "image/png")
treehouse10.save

User.create(first_name: "Bruce", last_name: "Smith", email: "smith@email.com", password: "123456")
User.create(first_name: "Carl", last_name: "Anderson", email: "anderson@email.com", password: "123456")

puts "10 Treehouses and two users have been created!"
