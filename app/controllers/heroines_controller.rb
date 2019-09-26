class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
    @powers = Power.all

    @heroines_search = Heroine.search(params[:search])
  end

  def show 
    @heroine = Heroine.find(params[:id])
    @power_name = Power.find(@heroine.power_id)
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end 

  def create 
    @heroine = Heroine.new(heroine_params)

    if @heroine.save
      redirect_to heroine_path(@heroine.id)
    else
      render :new
    end
  end

private 

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id, :search)
  end

end

