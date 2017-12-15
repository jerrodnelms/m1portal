class SurgHospCrFormsController < ApplicationController
  before_action :set_surg_hosp_cr_form, only: [:show, :edit, :update, :destroy]

  # GET /surg_hosp_cr_forms
  def index
    @surg_hosp_cr_forms = SurgHospCrForm.all
  end

  # GET /surg_hosp_cr_forms/1
  def show
  end

  # GET /surg_hosp_cr_forms/new
  def new
    @surg_hosp_cr_form = SurgHospCrForm.new
  end

  # GET /surg_hosp_cr_forms/1/edit
  def edit
  end

  # POST /surg_hosp_cr_forms
  def create
    @surg_hosp_cr_form = SurgHospCrForm.new(surg_hosp_cr_form_params)

    if @surg_hosp_cr_form.save
      redirect_to @surg_hosp_cr_form, notice: 'Surg hosp cr form was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /surg_hosp_cr_forms/1
  def update
    if @surg_hosp_cr_form.update(surg_hosp_cr_form_params)
      redirect_to @surg_hosp_cr_form, notice: 'Surg hosp cr form was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /surg_hosp_cr_forms/1
  def destroy
    @surg_hosp_cr_form.destroy
    redirect_to surg_hosp_cr_forms_url, notice: 'Surg hosp cr form was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surg_hosp_cr_form
      @surg_hosp_cr_form = SurgHospCrForm.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def surg_hosp_cr_form_params
      params.require(:surg_hosp_cr_form).permit(:surg_hosp_form_id, :surg_hosp_form_hospital_id, :reviewer_email_address, :account_pat_num, :account_pat_type_id, :admit_date, :discharge_date, :any_pertinent_conditions, :surg_hosp_form_doc_id, :shf_omitted_condition_id, :shf_omitted_condition_detail, :shf_dnmc_condition_id, :shf_dnmc_condition_detail, :shf_actual_condition_id, :additional_provider, :actual_conditions_tally, :captured_conditions_tally, :dnmc_conditions_tally, :additional_notes)
    end
end
