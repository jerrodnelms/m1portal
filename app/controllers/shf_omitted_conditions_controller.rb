class ShfOmittedConditionsController < ApplicationController
  before_action :set_shf_omitted_condition, only: [:show, :edit, :update, :destroy]

  # GET /shf_omitted_conditions
  def index
    @shf_omitted_conditions = ShfOmittedCondition.all
  end

  # GET /shf_omitted_conditions/1
  def show
  end

  # GET /shf_omitted_conditions/new
  def new
    @shf_omitted_condition = ShfOmittedCondition.new
  end

  # GET /shf_omitted_conditions/1/edit
  def edit
  end

  # POST /shf_omitted_conditions
  def create
    @shf_omitted_condition = ShfOmittedCondition.new(shf_omitted_condition_params)

    if @shf_omitted_condition.save
      redirect_to @shf_omitted_condition, notice: 'Shf omitted condition was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /shf_omitted_conditions/1
  def update
    if @shf_omitted_condition.update(shf_omitted_condition_params)
      redirect_to @shf_omitted_condition, notice: 'Shf omitted condition was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /shf_omitted_conditions/1
  def destroy
    @shf_omitted_condition.destroy
    redirect_to shf_omitted_conditions_url, notice: 'Shf omitted condition was successfully destroyed.'
  end

  def import
    ShfOmittedCondition.import(params[:file])
    redirect_to shf_omitted_conditions_path, notice: 'Condition(s) imported successfully'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shf_omitted_condition
      @shf_omitted_condition = ShfOmittedCondition.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shf_omitted_condition_params
      params.require(:shf_omitted_condition).permit(:name, :surg_hosp_form_id)
    end
end
