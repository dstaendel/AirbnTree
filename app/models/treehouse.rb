class Treehouse < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  has_many_attached :photos

  has_many_attached :photos
end
