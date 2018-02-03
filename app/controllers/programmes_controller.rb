class ProgrammesController < ApplicationController
  before_action :set_project
  before_action :set_programme, only: [:show, :edit, :update, :destroy]

  def index
    @programmes = Programme.all
  end
  def show
  end
  def new
    @programme = @project.programmes.build
  end
  def create
    @programme = Programme.new(programme_params)
    @programme.project = @project
    @programme.save
    if @programme.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end
  def edit
  end
  def update
    @programme.update(programme_params)
    @programme.project = @project
    redirect_to project_path(@project)
  end
  def destroy
    @programme.destroy
    redirect_to project_path(@project)
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def set_programme
    @programme = Programme.find(params[:id])
  end

  def programme_params
    params.require(:programme).permit(:name, :author, :duration, :date, :reference )
  end
end
