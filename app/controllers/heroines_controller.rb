class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
    @power = @heroine.power
  end

  def new
    @powers = Power.all
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.save
      redirect_to heroine_path(@heroine)
    else
      flash.now[:message] = @heroine.errors.full_messages[0]
      self.new
      render :new
    end
  end

  private def heroine_params
    params.require(:heroine).permit(:id, :name, :super_name, :power_id)
  end
end
