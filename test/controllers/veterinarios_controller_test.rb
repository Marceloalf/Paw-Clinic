require "test_helper"

class VeterinariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @veterinario = veterinarios(:one)
  end

  test "should get index" do
    get veterinarios_url
    assert_response :success
  end

  test "should get new" do
    get new_veterinario_url
    assert_response :success
  end

  test "should create veterinario" do
    assert_difference('Veterinario.count') do
      post veterinarios_url, params: { veterinario: { cpf: @veterinario.cpf, crmv: @veterinario.crmv, especialidade: @veterinario.especialidade, nome: @veterinario.nome, telefone: @veterinario.telefone } }
    end

    assert_redirected_to veterinario_url(Veterinario.last)
  end

  test "should show veterinario" do
    get veterinario_url(@veterinario)
    assert_response :success
  end

  test "should get edit" do
    get edit_veterinario_url(@veterinario)
    assert_response :success
  end

  test "should update veterinario" do
    patch veterinario_url(@veterinario), params: { veterinario: { cpf: @veterinario.cpf, crmv: @veterinario.crmv, especialidade: @veterinario.especialidade, nome: @veterinario.nome, telefone: @veterinario.telefone } }
    assert_redirected_to veterinario_url(@veterinario)
  end

  test "should destroy veterinario" do
    assert_difference('Veterinario.count', -1) do
      delete veterinario_url(@veterinario)
    end

    assert_redirected_to veterinarios_url
  end
end
