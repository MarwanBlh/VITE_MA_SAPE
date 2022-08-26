class DresserMenusController < ApplicationController
  def show
    @bookings = current_user.bookings
    @myclothes = Clothe.where(owner_id: current_user.id)
  end
end
