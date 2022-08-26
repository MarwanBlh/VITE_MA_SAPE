class ClothesController < ApplicationController
  def show
    @clothe = Clothe.find(params[:id])
  end

  def index
    @clothes = Clothe.all
  end

  def new
    @clothe = Clothe.new
  end

  def create
    @clothe = Clothe.new(params_clothe)
    @clothe.owner = current_user
    @clothe.save # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to dresser_menu_path
  end

  private

  def params_clothe
    params.require(:clothe).permit(:title, :description, :address, :daily_price, :gender, :size, :category, :color, :photo)
  end
end
