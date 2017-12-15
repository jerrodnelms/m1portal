class SurgeryTypesController < ApplicationController
  before_action :set_surgery_type, only: [:show, :edit, :update, :destroy]

  # GET /surgery_types
  def index
    @surgery_types = SurgeryType.all
  end

  # GET /surgery_types/1
  def show
  end

  # GET /surgery_types/new
  def new
    @surgery_type = SurgeryType.new
  end

  # GET /surgery_types/1/edit
  def edit
  end

  # POST /surgery_types
  def create
    @surgery_type = SurgeryType.new(surgery_type_params)

    if @surgery_type.save
      redirect_to @surgery_type, notice: 'Surgery type was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /surgery_types/1
  def update
    if @surgery_type.update(surgery_type_params)
      redirect_to @surgery_type, notice: 'Surgery type was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /surgery_types/1
  def destroy
    @surgery_type.destroy
    redirect_to surgery_types_url, notice: 'Surgery type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surgery_type
      @surgery_type = SurgeryType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def surgery_type_params
      params.require(:surgery_type).permit(:name)
    end
end
