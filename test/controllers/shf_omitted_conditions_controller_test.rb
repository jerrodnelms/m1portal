require 'test_helper'

class ShfOmittedConditionsControllerTest < ActionController::TestCase
  setup do
    @shf_omitted_condition = shf_omitted_conditions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shf_omitted_conditions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shf_omitted_condition" do
    assert_difference('ShfOmittedCondition.count') do
      post :create, shf_omitted_condition: { name: @shf_omitted_condition.name, surg_hosp_form_id: @shf_omitted_condition.surg_hosp_form_id }
    end

    assert_redirected_to shf_omitted_condition_path(assigns(:shf_omitted_condition))
  end

  test "should show shf_omitted_condition" do
    get :show, id: @shf_omitted_condition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shf_omitted_condition
    assert_response :success
  end

  test "should update shf_omitted_condition" do
    patch :update, id: @shf_omitted_condition, shf_omitted_condition: { name: @shf_omitted_condition.name, surg_hosp_form_id: @shf_omitted_condition.surg_hosp_form_id }
    assert_redirected_to shf_omitted_condition_path(assigns(:shf_omitted_condition))
  end

  test "should destroy shf_omitted_condition" do
    assert_difference('ShfOmittedCondition.count', -1) do
      delete :destroy, id: @shf_omitted_condition
    end

    assert_redirected_to shf_omitted_conditions_path
  end
end
