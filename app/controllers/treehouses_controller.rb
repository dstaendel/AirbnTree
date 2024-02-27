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

  def edit
    @treehouse = Treehouse.find(params[:id])
  end

  def update
    @treehouse = Treehouse.find(params[:id])
    @treehouse.update(treehouse_params)
    @treehouse.save
    redirect_to treehouses_path(@treehouse.id)

  end

  def destroy
    @treehouse = Treehouse.find(params[:id])
    @treehouse.destroy
    redirect_to treehouses_path
  end

  private

  # def set_treehouse
  #   @treehouse = Treehouse.find(params[:id])
  # end

  def treehouse_params
    params.require(:treehouse).permit(:name, :tree_type, :total_occupancy, :summary, :address, :price)
  end
end
