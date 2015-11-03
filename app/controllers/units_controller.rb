class UnitsController < ApplicationController
  def index
    @units = Unit.all.ordered
  end

  def show
  end

  def new
    @unit = Unit.new
  end

  def create
    @unit = Unit.new params.require(:unit).permit(:name, :unit_order)
    if @unit.save
      redirect_to units_path
    else
      render :new
    end
  end

  def edit
  end
end
