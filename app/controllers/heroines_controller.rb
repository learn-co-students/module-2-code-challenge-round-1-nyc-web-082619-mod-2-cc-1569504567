class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.create(name: params[:heroine][:name], super_name: params[:heroine][:super_name], power_id: params[:heroine][:power_id])
    
    redirect_to heroine_path(@heroine.id)
  end

  def show  
    @heroine = Heroine.find(params[:id])
    @heroine_power = @heroine.heroine_power
  end

end
