class OasesController < ApplicationController

  before_action :set_oasis, only: [:show, :edit, :update, :destroy]

  def index
    @oases = Oasis.all
  end
  def show
  end
  def new
    @oasis = Oasis.new
  end
  def create
    @oasis = Oasis.create(oasis_params)
    if @oasis.save
      redirect_to oases_path
    else
      render :new
    end
  end
  def edit
  end
  def update
    @oasis.update(oasis_params)
    redirect_to oase_path
  end
  def destroy
    @oasis.destroy
    redirect_to oase_path
  end

  private

  def set_oasis
    @oasis = Oasis.find(params[:id])
  end
  def oasis_params
    params.require(:oasis).permit(:name, :acoustic, :stage_span, :city, :jauge)
  end
end
