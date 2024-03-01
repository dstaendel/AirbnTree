class PagesController < ApplicationController
  before_action :require_login , only: [:profile]

  def home
    # @markers = Treehouse.geocoded.map do |treehouse|
    #   {
    #     latitude: treehouse.latitude,
    #     longitude: treehouse.longitude
    #   }
    # end
  end

  def profile
    @bookings = Booking.where(user_id: current_user.id)
    @my_treehouses = Treehouse.where(user_id: current_user.id)
    @incoming_bookings = Booking.where(treehouse_id: @my_treehouses.pluck(:id), status: "pending")
  end

  private

  def require_login
    unless current_user
      redirect_to new_user_session_path
    end
  end
end
