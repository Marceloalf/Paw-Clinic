class AdminsController < ApplicationController
  before_action :set_admin, :only => %i[ show edit update destroy ]

  # GET /animals or /animals.json
  def index
    @admins = User.order(:email).page params[:page]
  end

  def new
    @admin = User.new
  end

  def create
    @admin = User.new(admin_params)
    @admin.tipo_usuario = :admin

    respond_to do |format|
      if @admin.save
        format.html { redirect_to admins_url, notice: "Admin was successfully created." }
        format.json { render :show, status: :created, location: @admin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animals/1 or /animals/1.json
  def destroy
    @admin.destroy
    respond_to do |format|
      format.html { redirect_to admins_url, notice: "Admin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  def prepare_form
    @admins = User.all
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_admin
    @admin = User.find(params[:id])
  end

  def admin_params
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end
end
