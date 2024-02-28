class PagesController < ApplicationController
  def home
  end

  def profile
    @bookings = Booking.where(user: current_user)
    # @user = current_user
    # @bookings.user =
    @my_treehouses = Treehouse.where(user: current_user)
    @incoming_bookings = @my_treehouses.select { |treehouse| treehouse.booking == "pending"}
  end
end
