require "application_system_test_case"

class PasseadoresTest < ApplicationSystemTestCase
  setup do
    @passeadore = passeadores(:one)
  end

  test "visiting the index" do
    visit passeadores_url
    assert_selector "h1", text: "Passeadores"
  end

  test "creating a Passeadore" do
    visit passeadores_url
    click_on "New Passeadore"

    fill_in "Bairro", with: @passeadore.bairro
    fill_in "Email", with: @passeadore.email
    fill_in "Nome", with: @passeadore.nome
    fill_in "Preco", with: @passeadore.preco
    fill_in "Sobrenome", with: @passeadore.sobrenome
    fill_in "Tel", with: @passeadore.tel
    click_on "Create Passeadore"

    assert_text "Passeadore was successfully created"
    click_on "Back"
  end

  test "updating a Passeadore" do
    visit passeadores_url
    click_on "Edit", match: :first

    fill_in "Bairro", with: @passeadore.bairro
    fill_in "Email", with: @passeadore.email
    fill_in "Nome", with: @passeadore.nome
    fill_in "Preco", with: @passeadore.preco
    fill_in "Sobrenome", with: @passeadore.sobrenome
    fill_in "Tel", with: @passeadore.tel
    click_on "Update Passeadore"

    assert_text "Passeadore was successfully updated"
    click_on "Back"
  end

  test "destroying a Passeadore" do
    visit passeadores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Passeadore was successfully destroyed"
  end
end
