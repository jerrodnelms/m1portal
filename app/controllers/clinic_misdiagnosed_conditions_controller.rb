class ClinicMisdiagnosedConditionsController < ApplicationController
  before_action :set_clinic_misdiagnosed_condition, only: [:show, :edit, :update, :destroy]

  # GET /clinic_misdiagnosed_conditions
  def index
    @clinic_misdiagnosed_conditions = ClinicMisdiagnosedCondition.all
  end

  # GET /clinic_misdiagnosed_conditions/1
  def show
  end

  # GET /clinic_misdiagnosed_conditions/new
  def new
    @clinic_misdiagnosed_condition = ClinicMisdiagnosedCondition.new
  end

  # GET /clinic_misdiagnosed_conditions/1/edit
  def edit
  end

  # POST /clinic_misdiagnosed_conditions
  def create
    @clinic_misdiagnosed_condition = ClinicMisdiagnosedCondition.new(clinic_misdiagnosed_condition_params)

    if @clinic_misdiagnosed_condition.save
      redirect_to @clinic_misdiagnosed_condition, notice: 'Clinic misdiagnosed condition was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /clinic_misdiagnosed_conditions/1
  def update
    if @clinic_misdiagnosed_condition.update(clinic_misdiagnosed_condition_params)
      redirect_to @clinic_misdiagnosed_condition, notice: 'Clinic misdiagnosed condition was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /clinic_misdiagnosed_conditions/1
  def destroy
    @clinic_misdiagnosed_condition.destroy
    redirect_to clinic_misdiagnosed_conditions_url, notice: 'Clinic misdiagnosed condition was successfully destroyed.'
  end

  def import
    ClinicMisdiagnosedCondition.import(params[:file])
    redirect_to clinic_omitted_conditions_path, notice: 'Clinic condition(s) imported successfully'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinic_misdiagnosed_condition
      @clinic_misdiagnosed_condition = ClinicMisdiagnosedCondition.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def clinic_misdiagnosed_condition_params
      params.require(:clinic_misdiagnosed_condition).permit(:name, :clinic_id)
    end
end
