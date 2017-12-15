class ClinicAccurateConditionsController < ApplicationController
  before_action :set_clinic_accurate_condition, only: [:show, :edit, :update, :destroy]

  # GET /clinic_accurate_conditions
  def index
    @clinic_accurate_conditions = ClinicAccurateCondition.all
  end

  # GET /clinic_accurate_conditions/1
  def show
  end

  # GET /clinic_accurate_conditions/new
  def new
    @clinic_accurate_condition = ClinicAccurateCondition.new
  end

  # GET /clinic_accurate_conditions/1/edit
  def edit
  end

  # POST /clinic_accurate_conditions
  def create
    @clinic_accurate_condition = ClinicAccurateCondition.new(clinic_accurate_condition_params)

    if @clinic_accurate_condition.save
      redirect_to @clinic_accurate_condition, notice: 'Clinic accurate condition was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /clinic_accurate_conditions/1
  def update
    if @clinic_accurate_condition.update(clinic_accurate_condition_params)
      redirect_to @clinic_accurate_condition, notice: 'Clinic accurate condition was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /clinic_accurate_conditions/1
  def destroy
    @clinic_accurate_condition.destroy
    redirect_to clinic_accurate_conditions_url, notice: 'Clinic accurate condition was successfully destroyed.'
  end

  def import
    ClinicAccurateCondition.import(params[:file])
    redirect_to clinic_omitted_conditions_path, notice: 'Clinic condition(s) imported successfully'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinic_accurate_condition
      @clinic_accurate_condition = ClinicAccurateCondition.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def clinic_accurate_condition_params
      params.require(:clinic_accurate_condition).permit(:name, :clinic_id)
    end
end
