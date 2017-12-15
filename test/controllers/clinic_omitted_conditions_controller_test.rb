require 'test_helper'

class ClinicOmittedConditionsControllerTest < ActionController::TestCase
  setup do
    @clinic_omitted_condition = clinic_omitted_conditions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinic_omitted_conditions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinic_omitted_condition" do
    assert_difference('ClinicOmittedCondition.count') do
      post :create, clinic_omitted_condition: { clinic_id: @clinic_omitted_condition.clinic_id, name: @clinic_omitted_condition.name }
    end

    assert_redirected_to clinic_omitted_condition_path(assigns(:clinic_omitted_condition))
  end

  test "should show clinic_omitted_condition" do
    get :show, id: @clinic_omitted_condition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinic_omitted_condition
    assert_response :success
  end

  test "should update clinic_omitted_condition" do
    patch :update, id: @clinic_omitted_condition, clinic_omitted_condition: { clinic_id: @clinic_omitted_condition.clinic_id, name: @clinic_omitted_condition.name }
    assert_redirected_to clinic_omitted_condition_path(assigns(:clinic_omitted_condition))
  end

  test "should destroy clinic_omitted_condition" do
    assert_difference('ClinicOmittedCondition.count', -1) do
      delete :destroy, id: @clinic_omitted_condition
    end

    assert_redirected_to clinic_omitted_conditions_path
  end
end
