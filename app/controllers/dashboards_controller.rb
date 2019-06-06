class DashboardsController < ApplicationController

  def index
    @entities = Entity.all.default_sorting.paginate(page: params[:page])
  end

end
