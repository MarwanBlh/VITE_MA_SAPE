class ClothesController < ApplicationController
  def show
    @clothe = Clothe.find(params[:id])
  end

  def index
    @clothes = Clothe.where.not(owner:current_user)
  end

end
