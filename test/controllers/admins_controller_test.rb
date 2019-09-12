require 'test_helper'

class AdminsControllerTest < ActionDispatch::IntegrationTest

  test "should get dash" do
    get admins_dash_url, headers: { Authorization: ActionController::HttpAuthentication::Basic.encode_credentials('admin', 'admin') }
    assert_response :success
  end

  test "should get showClientes" do
    get admins_showClientes_url, headers: { Authorization: ActionController::HttpAuthentication::Basic.encode_credentials('admin', 'admin') }
    assert_response :success
  end

  test "should get showDogs" do
    get admins_showDogs_url, headers: { Authorization: ActionController::HttpAuthentication::Basic.encode_credentials('admin', 'admin') }
    assert_response :success
  end

  test "should get showPasseadores" do
    get admins_showPasseadores_url, headers: { Authorization: ActionController::HttpAuthentication::Basic.encode_credentials('admin', 'admin') }
    assert_response :success
  end

end
