require 'test_helper'

class ConferenciaControllerTest < ActionController::TestCase
  setup do
    @conferencium = conferencia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conferencia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conferencium" do
    assert_difference('Conferencium.count') do
      post :create, conferencium: @conferencium.attributes
    end

    assert_redirected_to conferencium_path(assigns(:conferencium))
  end

  test "should show conferencium" do
    get :show, id: @conferencium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @conferencium
    assert_response :success
  end

  test "should update conferencium" do
    put :update, id: @conferencium, conferencium: @conferencium.attributes
    assert_redirected_to conferencium_path(assigns(:conferencium))
  end

  test "should destroy conferencium" do
    assert_difference('Conferencium.count', -1) do
      delete :destroy, id: @conferencium
    end

    assert_redirected_to conferencia_path
  end
end
