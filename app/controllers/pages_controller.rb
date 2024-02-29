class PagesController < ApplicationController
  def home
  end

  def profile
    @bookings = Booking.where(user_id: current_user.id)
    @my_treehouses = Treehouse.where(user_id: current_user.id)
    @incoming_bookings = Booking.where(treehouse_id: @my_treehouses.pluck(:id), status: "pending")
  end
end
