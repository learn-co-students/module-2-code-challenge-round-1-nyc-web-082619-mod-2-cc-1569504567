class HeroinesController < ApplicationController
  def index
    if (params[:search])
      @heroines = Heroine.find_by_power(params[:search])
    else
      @heroines = Heroine.all
    end
  end

  def show
    @heroine = Heroine.find(params[:id])
    @power = @heroine.power
  end

  def new
    @powers = Power.all
  end

  def edit
    @heroine = Heroine.find(params[:id])
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

  def update
    @heroine = Heroine.find(params[:id])
    if @heroine.update(heroine_params)
      redirect_to heroine_path(@heroine)
    else
      flash.now[:message] = @heroine.errors.full_messages[0]
      self.edit
      render :edit
    end
  end

  def delete
    Heroine.find(params[:id]).destroy
    redirect_to heroines_path
  end

  private def heroine_params
    params.require(:heroine).permit(:id, :name, :super_name, :power_id)
  end
end
