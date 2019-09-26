class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
    @powers = Power.all
    @powers.select do |p|
      if p.id == @heroine.power_id
        @power_name = p.name
      end
    end
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    @heroine = Heroine.create(heroine_params)
    redirect_to heroine_path(@heroine)

  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end


end
