class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end
  def show
  end
  def new
    @project = Project.new
  end
  def create
    Project.create(project_params)
    redirect_to projects_path
  end
  def edit
  end
  def update
    @project.update(project_params)
    redirect_to project_path
  end
  def destroy
    @project.destroy
    redirect_to projects_path
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end
  def project_params
    params.require(:project).permit(:name, :category, :cost)
  end
end
