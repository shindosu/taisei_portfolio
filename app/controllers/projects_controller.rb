class ProjectsController < ApplicationController
  def index
    @skills = %w(All Ruby\ on\ Rails Javascript Search)
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
