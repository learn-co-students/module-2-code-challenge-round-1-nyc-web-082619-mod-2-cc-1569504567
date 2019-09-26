class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @hero = Heroine.all.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create
    super_name = heroines_params[:super_name]
    hero_names = Heroine.all.map{|heroine| heroine.super_name}
    if hero_names.include?(super_name)
      error
    else
      @heroine = Heroine.create(heroines_params)
      heroine_path(@heroine.id)
    end
  end


  def error
    flash[:notice] "That supername already exists. Please try another."
    sleep 2.5
    redirect_to new_heroine_path
  end



  private
  def heroines_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end


end
