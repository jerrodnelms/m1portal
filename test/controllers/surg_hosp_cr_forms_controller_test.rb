require 'test_helper'

class SurgHospCrFormsControllerTest < ActionController::TestCase
  setup do
    @surg_hosp_cr_form = surg_hosp_cr_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surg_hosp_cr_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surg_hosp_cr_form" do
    assert_difference('SurgHospCrForm.count') do
      post :create, surg_hosp_cr_form: { account_pat_num: @surg_hosp_cr_form.account_pat_num, account_pat_type_id: @surg_hosp_cr_form.account_pat_type_id, actual_conditions_tally: @surg_hosp_cr_form.actual_conditions_tally, additional_notes: @surg_hosp_cr_form.additional_notes, additional_provider: @surg_hosp_cr_form.additional_provider, admit_date: @surg_hosp_cr_form.admit_date, any_pertinent_conditions: @surg_hosp_cr_form.any_pertinent_conditions, captured_conditions_tally: @surg_hosp_cr_form.captured_conditions_tally, discharge_date: @surg_hosp_cr_form.discharge_date, dnmc_conditions_tally: @surg_hosp_cr_form.dnmc_conditions_tally, reviewer_email_address: @surg_hosp_cr_form.reviewer_email_address, shf_actual_condition_id: @surg_hosp_cr_form.shf_actual_condition_id, shf_dnmc_condition_detail: @surg_hosp_cr_form.shf_dnmc_condition_detail, shf_dnmc_condition_id: @surg_hosp_cr_form.shf_dnmc_condition_id, shf_omitted_condition_detail: @surg_hosp_cr_form.shf_omitted_condition_detail, shf_omitted_condition_id: @surg_hosp_cr_form.shf_omitted_condition_id, surg_hosp_form_doc_id: @surg_hosp_cr_form.surg_hosp_form_doc_id, surg_hosp_form_hospital_id: @surg_hosp_cr_form.surg_hosp_form_hospital_id, surg_hosp_form_id: @surg_hosp_cr_form.surg_hosp_form_id }
    end

    assert_redirected_to surg_hosp_cr_form_path(assigns(:surg_hosp_cr_form))
  end

  test "should show surg_hosp_cr_form" do
    get :show, id: @surg_hosp_cr_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surg_hosp_cr_form
    assert_response :success
  end

  test "should update surg_hosp_cr_form" do
    patch :update, id: @surg_hosp_cr_form, surg_hosp_cr_form: { account_pat_num: @surg_hosp_cr_form.account_pat_num, account_pat_type_id: @surg_hosp_cr_form.account_pat_type_id, actual_conditions_tally: @surg_hosp_cr_form.actual_conditions_tally, additional_notes: @surg_hosp_cr_form.additional_notes, additional_provider: @surg_hosp_cr_form.additional_provider, admit_date: @surg_hosp_cr_form.admit_date, any_pertinent_conditions: @surg_hosp_cr_form.any_pertinent_conditions, captured_conditions_tally: @surg_hosp_cr_form.captured_conditions_tally, discharge_date: @surg_hosp_cr_form.discharge_date, dnmc_conditions_tally: @surg_hosp_cr_form.dnmc_conditions_tally, reviewer_email_address: @surg_hosp_cr_form.reviewer_email_address, shf_actual_condition_id: @surg_hosp_cr_form.shf_actual_condition_id, shf_dnmc_condition_detail: @surg_hosp_cr_form.shf_dnmc_condition_detail, shf_dnmc_condition_id: @surg_hosp_cr_form.shf_dnmc_condition_id, shf_omitted_condition_detail: @surg_hosp_cr_form.shf_omitted_condition_detail, shf_omitted_condition_id: @surg_hosp_cr_form.shf_omitted_condition_id, surg_hosp_form_doc_id: @surg_hosp_cr_form.surg_hosp_form_doc_id, surg_hosp_form_hospital_id: @surg_hosp_cr_form.surg_hosp_form_hospital_id, surg_hosp_form_id: @surg_hosp_cr_form.surg_hosp_form_id }
    assert_redirected_to surg_hosp_cr_form_path(assigns(:surg_hosp_cr_form))
  end

  test "should destroy surg_hosp_cr_form" do
    assert_difference('SurgHospCrForm.count', -1) do
      delete :destroy, id: @surg_hosp_cr_form
    end

    assert_redirected_to surg_hosp_cr_forms_path
  end
end
