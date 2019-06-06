class DashboardsController < ApplicationController

  def index
    @entities = Entity.default_sorting
    @entities = @entities.search(params[:search]) unless params[:search].blank?
    @entities = @entities.paginate(page: params[:page])
  end

end
