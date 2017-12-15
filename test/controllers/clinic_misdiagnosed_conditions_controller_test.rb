require 'test_helper'

class ClinicMisdiagnosedConditionsControllerTest < ActionController::TestCase
  setup do
    @clinic_misdiagnosed_condition = clinic_misdiagnosed_conditions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinic_misdiagnosed_conditions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinic_misdiagnosed_condition" do
    assert_difference('ClinicMisdiagnosedCondition.count') do
      post :create, clinic_misdiagnosed_condition: { clinic_id: @clinic_misdiagnosed_condition.clinic_id, name: @clinic_misdiagnosed_condition.name }
    end

    assert_redirected_to clinic_misdiagnosed_condition_path(assigns(:clinic_misdiagnosed_condition))
  end

  test "should show clinic_misdiagnosed_condition" do
    get :show, id: @clinic_misdiagnosed_condition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinic_misdiagnosed_condition
    assert_response :success
  end

  test "should update clinic_misdiagnosed_condition" do
    patch :update, id: @clinic_misdiagnosed_condition, clinic_misdiagnosed_condition: { clinic_id: @clinic_misdiagnosed_condition.clinic_id, name: @clinic_misdiagnosed_condition.name }
    assert_redirected_to clinic_misdiagnosed_condition_path(assigns(:clinic_misdiagnosed_condition))
  end

  test "should destroy clinic_misdiagnosed_condition" do
    assert_difference('ClinicMisdiagnosedCondition.count', -1) do
      delete :destroy, id: @clinic_misdiagnosed_condition
    end

    assert_redirected_to clinic_misdiagnosed_conditions_path
  end
end
