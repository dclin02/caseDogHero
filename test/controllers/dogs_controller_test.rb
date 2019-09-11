require 'test_helper'

class DogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dog = dogs(:one)
    @cliente = clientes(:one)
  end

  test "should get index" do
    get cliente_dogs_url(@cliente)
    assert_response :success
  end

  test "should get new" do
    get new_cliente_dog_url(@cliente)
    assert_response :success
  end

  test "should create dog" do
    assert_difference('Dog.count') do
      post cliente_dogs_url(@cliente), params: { dog: { castrado: @dog.castrado, cliente_id: @dog.cliente_id, genero: @dog.genero, idade: @dog.idade, nome: @dog.nome, porte: @dog.porte, raca: @dog.raca, raiva: @dog.raiva, vacinas: @dog.vacinas } }
    end

    #assert_redirected_to cliente_dog_url(@cliente.dogs.last)
    assert_redirected_to cliente_dogs_path(@cliente)
  end

  test "should show dog" do
    get cliente_dog_url(@cliente, @dog)
    assert_response :success
  end

  test "should get edit" do
    get edit_cliente_dog_url(@cliente, @dog)
    assert_response :success
  end

  test "should update dog" do
    patch cliente_dog_url(@cliente, @dog), params: { dog: { castrado: @dog.castrado, cliente_id: @dog.cliente_id, genero: @dog.genero, idade: @dog.idade, nome: @dog.nome, porte: @dog.porte, raca: @dog.raca, raiva: @dog.raiva, vacinas: @dog.vacinas } }
    #assert_redirected_to cliente_dog_url(@cliente, @dog)
    assert_redirected_to cliente_dogs_path(@cliente)
    
  end

  test "should destroy dog" do
    assert_difference('Dog.count', -1) do
      delete cliente_dog_url(@cliente, @dog)
    end

    assert_redirected_to cliente_dogs_url(@cliente)
  end
end
