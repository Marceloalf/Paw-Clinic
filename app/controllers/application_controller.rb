class ApplicationController < ActionController::Base
  def requires_admin
    current_user.tipo_usuario == :admin
  end

  def requires_veteriario
    current_user.tipo_usuario == :veterinario
  end

  def requires_responsavel
    current_user.tipo_usuario == :responsavel
  end
end
