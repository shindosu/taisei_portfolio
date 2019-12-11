class ProjectsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR skill ILIKE :query"
      @projects = @projects.where(sql_query, query: "%#{params[:query]}%")
    else
      @projects = Project.all.order("LOWER(title)")
    end
  end

  def show
    @project = Project.find(params[:id])
  end
end
