class DashboardController < ApplicationController
  def show
    @units = Unit.all.ordered
  end
end
