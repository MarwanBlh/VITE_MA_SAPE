class ClothesController < ApplicationController
  def show
    @clothe = Clothe.find(params[:id])
  end

  def index
    @clothes = Clothe.where.not(owner:current_user)
  end

  def new
    @clothe = Clothe.new
  end

  def create
    @clothe = Clothe.new(params_clothe)
    @clothe.owner = current_user
    if @clothe.save
      redirect_to dresser_menu_path
    else
      render :new
    end
  end

  private

  def params_clothe
    params.require(:clothe).permit(:title, :description, :address, :daily_price, :gender, :size, :category, :color, :photo)
  end
end
