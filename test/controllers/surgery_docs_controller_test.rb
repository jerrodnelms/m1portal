require 'test_helper'

class SurgeryDocsControllerTest < ActionController::TestCase
  setup do
    @surgery_doc = surgery_docs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surgery_docs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surgery_doc" do
    assert_difference('SurgeryDoc.count') do
      post :create, surgery_doc: { name: @surgery_doc.name, surgery_type_id: @surgery_doc.surgery_type_id }
    end

    assert_redirected_to surgery_doc_path(assigns(:surgery_doc))
  end

  test "should show surgery_doc" do
    get :show, id: @surgery_doc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surgery_doc
    assert_response :success
  end

  test "should update surgery_doc" do
    patch :update, id: @surgery_doc, surgery_doc: { name: @surgery_doc.name, surgery_type_id: @surgery_doc.surgery_type_id }
    assert_redirected_to surgery_doc_path(assigns(:surgery_doc))
  end

  test "should destroy surgery_doc" do
    assert_difference('SurgeryDoc.count', -1) do
      delete :destroy, id: @surgery_doc
    end

    assert_redirected_to surgery_docs_path
  end
end
