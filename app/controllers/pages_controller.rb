class PagesController < ApplicationController
  def home
  end

  def profile
    @bookings = Booking.where(user: current_user)
    # @user = current_user
    # @bookings.user =
  end
end
