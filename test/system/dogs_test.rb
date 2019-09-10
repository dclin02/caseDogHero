require "application_system_test_case"

class DogsTest < ApplicationSystemTestCase
  setup do
    @dog = dogs(:one)
  end

  test "visiting the index" do
    visit dogs_url
    assert_selector "h1", text: "Dogs"
  end

  test "creating a Dog" do
    visit dogs_url
    click_on "New Dog"

    check "Castrado" if @dog.castrado
    fill_in "Cliente", with: @dog.cliente_id
    fill_in "Genero", with: @dog.genero
    fill_in "Idade", with: @dog.idade
    fill_in "Nome", with: @dog.nome
    fill_in "Porte", with: @dog.porte
    fill_in "Raca", with: @dog.raca
    check "Raiva" if @dog.raiva
    check "Vacinas" if @dog.vacinas
    click_on "Create Dog"

    assert_text "Dog was successfully created"
    click_on "Back"
  end

  test "updating a Dog" do
    visit dogs_url
    click_on "Edit", match: :first

    check "Castrado" if @dog.castrado
    fill_in "Cliente", with: @dog.cliente_id
    fill_in "Genero", with: @dog.genero
    fill_in "Idade", with: @dog.idade
    fill_in "Nome", with: @dog.nome
    fill_in "Porte", with: @dog.porte
    fill_in "Raca", with: @dog.raca
    check "Raiva" if @dog.raiva
    check "Vacinas" if @dog.vacinas
    click_on "Update Dog"

    assert_text "Dog was successfully updated"
    click_on "Back"
  end

  test "destroying a Dog" do
    visit dogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dog was successfully destroyed"
  end
end
