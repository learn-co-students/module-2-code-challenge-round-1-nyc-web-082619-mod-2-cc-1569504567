class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def new 
    @heroine = Heroine.new 
    @powers = Power.all 
  end

  def create 
    @heroine = Heroine.new(heroine_params)
    @powers = Power.all
    if @heroine.save 
      redirect_to heroine_path(@heroine)
    else 
      flash.now[:message] = @heroine.errors.full_messages[0]
      render :new
    end
  end

  def show 
    @heroine = Heroine.find(params[:id])
  end

  private 
  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

end
