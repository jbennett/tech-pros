class DashboardsController < ApplicationController

  def index
    @entities = Entity.all.default_sorting
  end

end
