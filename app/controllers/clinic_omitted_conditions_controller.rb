class ClinicOmittedConditionsController < ApplicationController
  before_action :set_clinic_omitted_condition, only: [:show, :edit, :update, :destroy]

  # GET /clinic_omitted_conditions
  def index
    @clinic_omitted_conditions = ClinicOmittedCondition.all
  end

  # GET /clinic_omitted_conditions/1
  def show
  end

  # GET /clinic_omitted_conditions/new
  def new
    @clinic_omitted_condition = ClinicOmittedCondition.new
  end

  # GET /clinic_omitted_conditions/1/edit
  def edit
  end

  # POST /clinic_omitted_conditions
  def create
    @clinic_omitted_condition = ClinicOmittedCondition.new(clinic_omitted_condition_params)

    if @clinic_omitted_condition.save
      redirect_to @clinic_omitted_condition, notice: 'Clinic omitted condition was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /clinic_omitted_conditions/1
  def update
    if @clinic_omitted_condition.update(clinic_omitted_condition_params)
      redirect_to @clinic_omitted_condition, notice: 'Clinic omitted condition was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /clinic_omitted_conditions/1
  def destroy
    @clinic_omitted_condition.destroy
    redirect_to clinic_omitted_conditions_url, notice: 'Clinic omitted condition was successfully destroyed.'
  end

  def import
    ClinicOmittedCondition.import(params[:file])
    redirect_to clinic_omitted_conditions_path, notice: 'Clinic condition(s) imported successfully'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinic_omitted_condition
      @clinic_omitted_condition = ClinicOmittedCondition.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def clinic_omitted_condition_params
      params.require(:clinic_omitted_condition).permit(:name, :clinic_id)
    end
end
