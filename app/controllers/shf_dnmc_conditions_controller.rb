class ShfDnmcConditionsController < ApplicationController
  before_action :set_shf_dnmc_condition, only: [:show, :edit, :update, :destroy]

  # GET /shf_dnmc_conditions
  def index
    @shf_dnmc_conditions = ShfDnmcCondition.all
  end

  # GET /shf_dnmc_conditions/1
  def show
  end

  # GET /shf_dnmc_conditions/new
  def new
    @shf_dnmc_condition = ShfDnmcCondition.new
  end

  # GET /shf_dnmc_conditions/1/edit
  def edit
  end

  # POST /shf_dnmc_conditions
  def create
    @shf_dnmc_condition = ShfDnmcCondition.new(shf_dnmc_condition_params)

    if @shf_dnmc_condition.save
      redirect_to @shf_dnmc_condition, notice: 'Shf dnmc condition was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /shf_dnmc_conditions/1
  def update
    if @shf_dnmc_condition.update(shf_dnmc_condition_params)
      redirect_to @shf_dnmc_condition, notice: 'Shf dnmc condition was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /shf_dnmc_conditions/1
  def destroy
    @shf_dnmc_condition.destroy
    redirect_to shf_dnmc_conditions_url, notice: 'Shf dnmc condition was successfully destroyed.'
  end

  def import
    ShfDnmcCondition.import(params[:file])
    redirect_to shf_dnmc_conditions_path, notice: 'Condition(s) imported successfully'
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shf_dnmc_condition
      @shf_dnmc_condition = ShfDnmcCondition.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shf_dnmc_condition_params
      params.require(:shf_dnmc_condition).permit(:name, :surg_hosp_form_id)
    end
end
