require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcome_index_url
    assert_response :success
  end

  test "should get searchCliente" do
    get welcome_searchCliente_url
    assert_response :found
  end

  test "should get searchPasseadore" do
    get welcome_searchPasseadore_url
    assert_response :found
  end

  test "should not find cliente and redirect to home" do
    get welcome_searchCliente_url, params: {email: 'esseemailnaodeveriaexistiroqfacosealguemcriarexatamenteele'}
    assert_redirected_to welcome_index_path
    assert flash[:clienteNotice].present?
  end

  test "should not find passeador and redirect to home" do
    get welcome_searchPasseadore_url, params: {pEmail: 'esseemailnaodeveriaexistiroqfacosealguemcriarexatamenteele'}
    assert_redirected_to welcome_index_path
    assert flash[:passeadoreNotice].present?
  end

  test "should find cliente and redirect to its page" do
    get welcome_searchCliente_url, params: {email: clientes(:one).email}
    #puts clientes(:one).email #testing fixtures
    assert_redirected_to cliente_url(clientes(:one))
  end

  test "should find passeador and redirect to its page" do
    get welcome_searchPasseadore_url, params: {pEmail: passeadores(:one).email}
    assert_redirected_to passeadore_url(passeadores(:one))
  end
end
