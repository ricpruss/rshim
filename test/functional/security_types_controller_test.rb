require 'test_helper'

class SecurityTypesControllerTest < ActionController::TestCase
  setup do
    @security_type = security_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:security_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create security_type" do
    assert_difference('SecurityType.count') do
      post :create, security_type: @security_type.attributes
    end

    assert_redirected_to security_type_path(assigns(:security_type))
  end

  test "should show security_type" do
    get :show, id: @security_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @security_type.to_param
    assert_response :success
  end

  test "should update security_type" do
    put :update, id: @security_type.to_param, security_type: @security_type.attributes
    assert_redirected_to security_type_path(assigns(:security_type))
  end

  test "should destroy security_type" do
    assert_difference('SecurityType.count', -1) do
      delete :destroy, id: @security_type.to_param
    end

    assert_redirected_to security_types_path
  end
end
