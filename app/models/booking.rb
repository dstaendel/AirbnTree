class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :treehouse

  STATUS = ["pending", "accepted", "rejected"]
end
