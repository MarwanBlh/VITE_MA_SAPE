class ClothesController < ApplicationController
  def show
    @clothe = Clothe.find(params[:id])
  end
  
  def index
    @clothes = Clothe.all
  end
end
