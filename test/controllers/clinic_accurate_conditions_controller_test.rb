require 'test_helper'

class ClinicAccurateConditionsControllerTest < ActionController::TestCase
  setup do
    @clinic_accurate_condition = clinic_accurate_conditions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinic_accurate_conditions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinic_accurate_condition" do
    assert_difference('ClinicAccurateCondition.count') do
      post :create, clinic_accurate_condition: { clinic_id: @clinic_accurate_condition.clinic_id, name: @clinic_accurate_condition.name }
    end

    assert_redirected_to clinic_accurate_condition_path(assigns(:clinic_accurate_condition))
  end

  test "should show clinic_accurate_condition" do
    get :show, id: @clinic_accurate_condition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinic_accurate_condition
    assert_response :success
  end

  test "should update clinic_accurate_condition" do
    patch :update, id: @clinic_accurate_condition, clinic_accurate_condition: { clinic_id: @clinic_accurate_condition.clinic_id, name: @clinic_accurate_condition.name }
    assert_redirected_to clinic_accurate_condition_path(assigns(:clinic_accurate_condition))
  end

  test "should destroy clinic_accurate_condition" do
    assert_difference('ClinicAccurateCondition.count', -1) do
      delete :destroy, id: @clinic_accurate_condition
    end

    assert_redirected_to clinic_accurate_conditions_path
  end
end
