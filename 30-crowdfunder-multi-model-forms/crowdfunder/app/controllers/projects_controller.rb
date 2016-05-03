class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to projects_path, notice: "Project successfully saved!"
    else
      render 'new'
    end
  end

  private
  def project_params
    params.require(:project).permit(:title, :description, :end_date, rewards_attributes: [:amount, :description])
  end
end
