class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all 
  end

  def create
    if @heroine = Heroine.new(set_heroine)
      @heroine.save 
      redirect_to heroines_path
    else
      @heroine.new
    end
  end
  
  private

  def set_heroine 
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
