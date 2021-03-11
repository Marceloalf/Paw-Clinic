class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = user
    render current_user.tipo_usuario
  end

  def user
    if current_user.tipo_usuario == :responsavel
      Responsavel.find_by_user_id current_user.id
    end
  end
end
