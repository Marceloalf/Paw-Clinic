require "application_system_test_case"

class AnimalsTest < ApplicationSystemTestCase
  setup do
    @animal = animals(:one)
  end

  test "visiting the index" do
    visit animals_url
    assert_selector "h1", text: "Animals"
  end

  test "creating a Animal" do
    visit animals_url
    click_on "New Animal"

    fill_in "Complicacoes", with: @animal.complicacoes
    fill_in "Especie", with: @animal.especie
    fill_in "Idade", with: @animal.idade
    fill_in "Nome", with: @animal.nome
    fill_in "Raca", with: @animal.raca
    fill_in "Sexo", with: @animal.sexo
    click_on "Create Animal"

    assert_text "Animal was successfully created"
    click_on "Back"
  end

  test "updating a Animal" do
    visit animals_url
    click_on "Edit", match: :first

    fill_in "Complicacoes", with: @animal.complicacoes
    fill_in "Especie", with: @animal.especie
    fill_in "Idade", with: @animal.idade
    fill_in "Nome", with: @animal.nome
    fill_in "Raca", with: @animal.raca
    fill_in "Sexo", with: @animal.sexo
    click_on "Update Animal"

    assert_text "Animal was successfully updated"
    click_on "Back"
  end

  test "destroying a Animal" do
    visit animals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Animal was successfully destroyed"
  end
end
