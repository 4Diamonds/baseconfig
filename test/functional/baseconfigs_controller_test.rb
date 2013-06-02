require 'test_helper'

class BaseconfigsControllerTest < ActionController::TestCase
  setup do
    @baseconfig = baseconfigs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:baseconfigs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create baseconfig" do
    assert_difference('Baseconfig.count') do
      post :create, baseconfig: { need: @baseconfig.need, offer: @baseconfig.offer, start: @baseconfig.start }
    end

    assert_redirected_to baseconfig_path(assigns(:baseconfig))
  end

  test "should show baseconfig" do
    get :show, id: @baseconfig
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @baseconfig
    assert_response :success
  end

  test "should update baseconfig" do
    put :update, id: @baseconfig, baseconfig: { need: @baseconfig.need, offer: @baseconfig.offer, start: @baseconfig.start }
    assert_redirected_to baseconfig_path(assigns(:baseconfig))
  end

  test "should destroy baseconfig" do
    assert_difference('Baseconfig.count', -1) do
      delete :destroy, id: @baseconfig
    end

    assert_redirected_to baseconfigs_path
  end
end
