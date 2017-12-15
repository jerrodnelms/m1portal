class ShfActualConditionsController < ApplicationController
  before_action :set_shf_actual_condition, only: [:show, :edit, :update, :destroy]

  # GET /shf_actual_conditions
  def index
    @shf_actual_conditions = ShfActualCondition.all
  end

  # GET /shf_actual_conditions/1
  def show
  end

  # GET /shf_actual_conditions/new
  def new
    @shf_actual_condition = ShfActualCondition.new
  end

  # GET /shf_actual_conditions/1/edit
  def edit
  end

  # POST /shf_actual_conditions
  def create
    @shf_actual_condition = ShfActualCondition.new(shf_actual_condition_params)

    if @shf_actual_condition.save
      redirect_to @shf_actual_condition, notice: 'Shf actual condition was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /shf_actual_conditions/1
  def update
    if @shf_actual_condition.update(shf_actual_condition_params)
      redirect_to @shf_actual_condition, notice: 'Shf actual condition was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /shf_actual_conditions/1
  def destroy
    @shf_actual_condition.destroy
    redirect_to shf_actual_conditions_url, notice: 'Shf actual condition was successfully destroyed.'
  end

  def import
    ShfActualCondition.import(params[:file])
    redirect_to shf_actual_conditions_path, notice: 'Condition(s) imported successfully'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shf_actual_condition
      @shf_actual_condition = ShfActualCondition.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shf_actual_condition_params
      params.require(:shf_actual_condition).permit(:name, :surg_hosp_form_id)
    end
end
