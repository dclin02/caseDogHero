require 'test_helper'

class PasseadoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @passeadore = passeadores(:one)
  end

  test "should get index" do
    get passeadores_url
    assert_response :success
  end

  test "should get new" do
    get new_passeadore_url
    assert_response :success
  end

  test "should create passeadore" do
    assert_difference('Passeadore.count') do
      post passeadores_url, params: { passeadore: { bairro: @passeadore.bairro, email: '@passeadore.email', nome: @passeadore.nome, preco: @passeadore.preco, sobrenome: @passeadore.sobrenome, tel: @passeadore.tel } }
    end

    assert_redirected_to passeadore_url(Passeadore.last)
  end

  test "should show passeadore" do
    get passeadore_url(@passeadore)
    assert_response :success
  end

  test "should get edit" do
    get edit_passeadore_url(@passeadore)
    assert_response :success
  end

  test "should update passeadore" do
    patch passeadore_url(@passeadore), params: { passeadore: { bairro: @passeadore.bairro, email: @passeadore.email, nome: @passeadore.nome, preco: @passeadore.preco, sobrenome: @passeadore.sobrenome, tel: @passeadore.tel } }
    assert_redirected_to passeadore_url(@passeadore)
  end

  test "should destroy passeadore" do
    assert_difference('Passeadore.count', -1) do
      delete passeadore_url(@passeadore)
    end

    assert_redirected_to passeadores_url
  end
end
