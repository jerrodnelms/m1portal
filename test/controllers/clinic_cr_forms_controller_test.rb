require 'test_helper'

class ClinicCrFormsControllerTest < ActionController::TestCase
  setup do
    @clinic_cr_form = clinic_cr_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinic_cr_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinic_cr_form" do
    assert_difference('ClinicCrForm.count') do
      post :create, clinic_cr_form: { actual_condition_tally: @clinic_cr_form.actual_condition_tally, additional_providers: @clinic_cr_form.additional_providers, any_pertinent_conditions: @clinic_cr_form.any_pertinent_conditions, captured_condition_tally: @clinic_cr_form.captured_condition_tally, clinic_accurate_condition_id: @clinic_cr_form.clinic_accurate_condition_id, clinic_doc_id: @clinic_cr_form.clinic_doc_id, clinic_id: @clinic_cr_form.clinic_id, clinic_misdiagnosed_condition_detail: @clinic_cr_form.clinic_misdiagnosed_condition_detail, clinic_misdiagnosed_condition_id: @clinic_cr_form.clinic_misdiagnosed_condition_id, clinic_omitted_condition_detail: @clinic_cr_form.clinic_omitted_condition_detail, clinic_omitted_condition_id: @clinic_cr_form.clinic_omitted_condition_id, misdiagnosed_condition_tally: @clinic_cr_form.misdiagnosed_condition_tally, mysis_id: @clinic_cr_form.mysis_id, num_visits_year: @clinic_cr_form.num_visits_year }
    end

    assert_redirected_to clinic_cr_form_path(assigns(:clinic_cr_form))
  end

  test "should show clinic_cr_form" do
    get :show, id: @clinic_cr_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinic_cr_form
    assert_response :success
  end

  test "should update clinic_cr_form" do
    patch :update, id: @clinic_cr_form, clinic_cr_form: { actual_condition_tally: @clinic_cr_form.actual_condition_tally, additional_providers: @clinic_cr_form.additional_providers, any_pertinent_conditions: @clinic_cr_form.any_pertinent_conditions, captured_condition_tally: @clinic_cr_form.captured_condition_tally, clinic_accurate_condition_id: @clinic_cr_form.clinic_accurate_condition_id, clinic_doc_id: @clinic_cr_form.clinic_doc_id, clinic_id: @clinic_cr_form.clinic_id, clinic_misdiagnosed_condition_detail: @clinic_cr_form.clinic_misdiagnosed_condition_detail, clinic_misdiagnosed_condition_id: @clinic_cr_form.clinic_misdiagnosed_condition_id, clinic_omitted_condition_detail: @clinic_cr_form.clinic_omitted_condition_detail, clinic_omitted_condition_id: @clinic_cr_form.clinic_omitted_condition_id, misdiagnosed_condition_tally: @clinic_cr_form.misdiagnosed_condition_tally, mysis_id: @clinic_cr_form.mysis_id, num_visits_year: @clinic_cr_form.num_visits_year }
    assert_redirected_to clinic_cr_form_path(assigns(:clinic_cr_form))
  end

  test "should destroy clinic_cr_form" do
    assert_difference('ClinicCrForm.count', -1) do
      delete :destroy, id: @clinic_cr_form
    end

    assert_redirected_to clinic_cr_forms_path
  end
end
