class PagesController < ApplicationController
  def home
  end

  def profile
    @bookings = Booking.all
    # @user = current_user
    # @bookings.user =
  end
end
