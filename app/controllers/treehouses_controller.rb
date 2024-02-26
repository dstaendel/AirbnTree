class TreehousesController < ApplicationController
  def index
    @treehouses = Treehouse.all
  end

  def show
    @treehouse = Treehouse.find(params[:id])
  end

  def new
    @treehouse = Treehouse.new
  end

  def create
    @treehouse = Treehouse.new(treehouse_params)

    if @treehouse.save
      redirect_to treehouses_path, notice: "Your new Treehouse was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  # def set_restaurant
  #   @restaurant = Restaurant.find(params[:id])
  # end

  def treehouse_params
    params.require(:treehouse).permit(:tree_type, :total_occupancy, :summary, :address, :price, :latitude, :longitude)
  end
end
