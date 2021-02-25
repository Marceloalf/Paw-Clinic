require "application_system_test_case"

class VeterinariosTest < ApplicationSystemTestCase
  setup do
    @veterinario = veterinarios(:one)
  end

  test "visiting the index" do
    visit veterinarios_url
    assert_selector "h1", text: "Veterinarios"
  end

  test "creating a Veterinario" do
    visit veterinarios_url
    click_on "New Veterinario"

    fill_in "Cpf", with: @veterinario.cpf
    fill_in "Crmv", with: @veterinario.crmv
    fill_in "Especialidade", with: @veterinario.especialidade
    fill_in "Nome", with: @veterinario.nome
    fill_in "Telefone", with: @veterinario.telefone
    click_on "Create Veterinario"

    assert_text "Veterinario was successfully created"
    click_on "Back"
  end

  test "updating a Veterinario" do
    visit veterinarios_url
    click_on "Edit", match: :first

    fill_in "Cpf", with: @veterinario.cpf
    fill_in "Crmv", with: @veterinario.crmv
    fill_in "Especialidade", with: @veterinario.especialidade
    fill_in "Nome", with: @veterinario.nome
    fill_in "Telefone", with: @veterinario.telefone
    click_on "Update Veterinario"

    assert_text "Veterinario was successfully updated"
    click_on "Back"
  end

  test "destroying a Veterinario" do
    visit veterinarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Veterinario was successfully destroyed"
  end
end
