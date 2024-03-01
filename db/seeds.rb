require 'open-uri'

puts "Destroying Treehouses..."
Treehouse.destroy_all
puts "Destroying Users..."
User.destroy_all

puts "creating users ..."

user1 = User.create(first_name: "Bruce", last_name: "Smith", email: "smith@email.com", password: "123456")
user2 = User.create(first_name: "Carl", last_name: "Anderson", email: "anderson@email.com", password: "123456")

puts "creating treehouses ..."

file = URI.open("https://images.unsplash.com/photo-1566754844421-9bc834baf4a3?q=80&w=2224&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
treehouse1 = Treehouse.create(name: "Treehouse of Horror", tree_type: "Oak tree", total_occupancy: 5, summary: "Simpsons themed treehouse", address: "Springfield", price: 100, latitude: 48.8649574, longitude: 2.3800617 )
treehouse1.user = user1
treehouse1.photos.attach(io: file, filename: "example1.png", content_type: "image/png")
treehouse1.save

file = URI.open("https://images.unsplash.com/photo-1615354310157-c78b1be66eed?q=80&w=3164&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
treehouse2 = Treehouse.create(name: "Cabin in the woods", tree_type: "Redwood tree", total_occupancy: 5, summary: "Haunted treehouse", address: "Vancouver", price: 100)
treehouse2.user = user1
treehouse2.photos.attach(io: file, filename: "example2.png", content_type: "image/png")
treehouse2.save

file = URI.open("https://images.unsplash.com/photo-1626290131022-4e5a5e167173?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
treehouse3 = Treehouse.create(name: "TreeTop Treasure", tree_type: "Palmtree", total_occupancy: 4, summary: "Luxury treehouse by the coast", address: "Uvita, Costa Rica", price: 300)
treehouse3.user = user1
treehouse3.photos.attach(io: file, filename: "example3.png", content_type: "image/png")
treehouse3.save

file = URI.open("https://png.pngtree.com/png-vector/20230728/ourmid/pngtree-treehouse-clipart-cartoon-vector-illustration-of-tree-house-png-image_6813959.png")
treehouse4 = Treehouse.create(name: "The Canopy Studio", tree_type: "Maple tree", total_occupancy: 2, summary: "Small and cozy treestudio", address: "Ontario", price: 150)
treehouse4.user = user1
treehouse4.photos.attach(io: file, filename: "example4.png", content_type: "image/png")
treehouse4.save

file = URI.open("https://images.unsplash.com/photo-1657221967132-eee98e4c4a37?q=80&w=2432&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
treehouse5 = Treehouse.create(name: "The Leafy Lagoon", tree_type: "Oak tree", total_occupancy: 5, summary: "Beatiful treehouse with a lagoon view", address: "Talcahuano, Chile", price: 170)
treehouse5.user = user1
treehouse5.photos.attach(io: file, filename: "example5.png", content_type: "image/png")
treehouse5.save

file = URI.open("https://images.unsplash.com/photo-1553576776-83c6a10b35b7?q=80&w=3280&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
treehouse6 = Treehouse.create(name: "The Hideout Heaven", tree_type: "Beech tree", total_occupancy: 4, summary: "Calm and cozy treehouse", address: "Nam Dinh, Vietnam", price: 100)
treehouse6.user = user2
treehouse6.photos.attach(io: file, filename: "example6.png", content_type: "image/png")
treehouse6.save

file = URI.open("https://images.unsplash.com/photo-1582880421648-a7154a8c99c1?q=80&w=3271&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
treehouse7 = Treehouse.create(name: "The Wildwood Retreat", tree_type: "Ash tree", total_occupancy: 2, summary: "Perfect retreat treehouse for couples", address: "Arizona", price: 200)
treehouse7.user = user2
treehouse7.photos.attach(io: file, filename: "example7.png", content_type: "image/png")
treehouse7.save

file = URI.open("https://images.unsplash.com/photo-1638519944713-cc630e072dff?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
treehouse8 = Treehouse.create(name: "The Treetop Outpost", tree_type: "Redwood tree", total_occupancy: 2, summary: "Calm and beatiful treehouse", address: "Stuttgart", price: 100)
treehouse8.user = user2
treehouse8.photos.attach(io: file, filename: "example8.png", content_type: "image/png")
treehouse8.save

file = URI.open("https://images.unsplash.com/photo-1521401830884-6c03c1c87ebb?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
treehouse9 = Treehouse.create(name: "The Leafy Lookout", tree_type: "Oak tree", total_occupancy: 3, summary: "The best treehouse in Congo", address: "Congo Forest", price: 80)
treehouse9.user = user2
treehouse9.photos.attach(io: file, filename: "example9.png", content_type: "image/png")
treehouse9.save

file = URI.open("https://images.unsplash.com/photo-1547393429-098dd122091a?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
treehouse10 = Treehouse.create(name: "The Arboreal Adventure", tree_type: "Cedar tree", total_occupancy: 4, summary: "Perfect treeehouse to bring the kids", address: "Minesota", price: 100)
treehouse10.user = user2
treehouse10.photos.attach(io: file, filename: "example10.png", content_type: "image/png")
treehouse10.save

puts "creating bookings ..."

booking1 = Booking.create(start_date: "Fri, 01 Mar 2024", end_date: "Sun, 07 Mar 2024", user_id: "1", treehouse_id: "7")
booking2 = Booking.create(start_date: "Fri, 08 Mar 2024", end_date: "Sun, 14 Mar 2024", user_id: "1", treehouse_id: "8")
booking3 = Booking.create(start_date: "Fri, 15 Mar 2024", end_date: "Sun, 21 Mar 2024", user_id: "1", treehouse_id: "9")
booking4 = Booking.create(start_date: "Fri, 22 Mar 2024", end_date: "Sun, 28 Mar 2024", user_id: "2", treehouse_id: "1")
booking5 = Booking.create(start_date: "Fri, 29 Mar 2024", end_date: "Sun, 31 Mar 2024", user_id: "2", treehouse_id: "2")

puts "Creating done."
