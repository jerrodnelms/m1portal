class SurgeryConditionsController < ApplicationController
  before_action :set_surgery_condition, only: [:show, :edit, :update, :destroy]

  # GET /surgery_conditions
  def index
    @surgery_conditions = SurgeryCondition.all
  end

  # GET /surgery_conditions/1
  def show
  end

  # GET /surgery_conditions/new
  def new
    @surgery_condition = SurgeryCondition.new
  end

  # GET /surgery_conditions/1/edit
  def edit
  end

  # POST /surgery_conditions
  def create
    @surgery_condition = SurgeryCondition.new(surgery_condition_params)

    if @surgery_condition.save
      redirect_to @surgery_condition, notice: 'Surgery condition was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /surgery_conditions/1
  def update
    if @surgery_condition.update(surgery_condition_params)
      redirect_to @surgery_condition, notice: 'Surgery condition was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /surgery_conditions/1
  def destroy
    @surgery_condition.destroy
    redirect_to surgery_conditions_url, notice: 'Surgery condition was successfully destroyed.'
  end

  def import
    SurgeryCondition.import(params[:file])
    redirect_to surgery_conditions_path, notice: 'Surgery condition(s) imported successfully'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surgery_condition
      @surgery_condition = SurgeryCondition.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def surgery_condition_params
      params.require(:surgery_condition).permit(:name, :surgery_type_id)
    end
end
