class Treehouse < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings

end


t.string "tree_type"
t.integer "total_occupancy"
t.text "summary"
t.string "address"
t.integer "price"
t.float "latitude"
t.float "longitude"
t.datetime "created_at", null: false
t.datetime "upd
