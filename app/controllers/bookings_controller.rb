class BookingsController < ApplicationController

  def new
    @treehouse = Treehouse.find(params[:treehouse_id])
    @booking = Booking.new
  end

  def create
    @treehouse = Treehouse.find(params[:treehouse_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to profile_path, notice: "Your new booking was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    @booking.save
    # redirect_to bookings_path(@booking.id)

  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    # redirect_to bookings_path, status: :see_other
  end

  private

  # def set_booking
  #   @booking = Booking.find(params[:id])
  # end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :price, :user_id, :treehouse_id)
  end
end
