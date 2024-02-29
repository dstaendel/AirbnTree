class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :treehouse

  validates :status, inclusion: { in: %w(pending accepted rejected) }
end
