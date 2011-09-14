require 'test_helper'

class LocalitiesControllerTest < ActionController::TestCase
  setup do
    @locality = localities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:localities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create locality" do
    assert_difference('Locality.count') do
      post :create, locality: @locality.attributes
    end

    assert_redirected_to locality_path(assigns(:locality))
  end

  test "should show locality" do
    get :show, id: @locality.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @locality.to_param
    assert_response :success
  end

  test "should update locality" do
    put :update, id: @locality.to_param, locality: @locality.attributes
    assert_redirected_to locality_path(assigns(:locality))
  end

  test "should destroy locality" do
    assert_difference('Locality.count', -1) do
      delete :destroy, id: @locality.to_param
    end

    assert_redirected_to localities_path
  end
end
