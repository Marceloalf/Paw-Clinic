class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    render current_user.tipo_usuario
  end
end
