class ConsultaController < ApplicationController
  before_action :set_consultum, only: %i[ show edit update destroy ]

  # GET /consulta or /consulta.json
  def index
    @consulta = Consultum.order deleted_at: :desc

    @deletados = @consulta.select { |c| not c.deleted_at.nil?}
    @finalizados = @consulta.select { |c| c.finalizada? }
    @consulta = @consulta.select { |c| c.deleted_at.nil?}
  end

  # GET /consulta/1 or /consulta/1.json
  def show
  end

  # GET /consulta/new
  def new
    prepare_form
    @consultum = Consultum.new
  end

  # GET /consulta/1/edit
  def edit
    prepare_form
  end

  # POST /consulta or /consulta.json
  def create
    if params[:animal]
      @consultum.animal = Animal.find(animal_params)
    end

    if params[:veterinario]
      @consultum.veterinario = Veterinario.find(animal_params)
    end

    @consultum = Consultum.new(consultum_params)
    @consultum.created_at = DateTime.now

    respond_to do |format|
      if @consultum.save
        format.html { redirect_to @consultum, notice: "Consultum was successfully created." }
        format.json { render :show, status: :created, location: @consultum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @consultum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consulta/1 or /consulta/1.json
  def update
    respond_to do |format|
      if @consultum.update(consultum_params)
        format.html { redirect_to @consultum, notice: "Consultum was successfully updated." }
        format.json { render :show, status: :ok, location: @consultum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @consultum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consulta/1 or /consulta/1.json
  def destroy
    @consultum.deleted_at = DateTime.now
    @consultum.save
    respond_to do |format|
      format.html { redirect_to consulta_url, notice: "Consultum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def prepare_form
      @animals = Animal.order :nome
      @veterinarios = Veterinario.order :nome
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_consultum
      @consultum = Consultum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def consultum_params
      params.require(:consultum).permit(:veterinario_id, :animal_id, :data, :sintomas, :prescricao)
    end
end
