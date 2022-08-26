class BookingsController < ApplicationController
  before_action :set_clothe, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.clothe = @clothe
    @booking.renter = current_user
    @booking.save

    redirect_to root_path
  end

  def accept_booking
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    @booking.save
  end

  def decline_booking
    @booking = Booking.find(params[:id])
    @booking.status = "declined"
    @booking.save
  end
  
  private
  def set_clothe
    @clothe = Clothe.find(params[:clothe_id])
  end

  def booking_params
    params.require(:booking).permit(
      :start_date,
      :end_date,
    )
  end
end
