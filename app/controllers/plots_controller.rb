class PlotsController < ApplicationController
  def index
    @plots = Plot.all
  end

  def show
    @plot = Plot.find(params[:id])
  end

  def new
    @plot = Plot.new
  end

  def create
    @plot = Plot.new(plot_params)
    if @plot.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def plot_params
    params.require(:plot).permit(:plot_number, :soil_type, :site_id, :size, :number_of_growers)
  end

end
