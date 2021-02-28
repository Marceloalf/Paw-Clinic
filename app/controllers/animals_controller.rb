class AnimalsController < ApplicationController
  before_action :set_animal, only: %i[ show edit update destroy ]

  # GET /animals or /animals.json
  def index
    @animals = Animal.all
  end

  # GET /animals/1 or /animals/1.json
  def show
  end

  # GET /animals/new
  def new
    prepare_form
    @animal = Animal.new
  end

  # GET /animals/1/edit
  def edit
    prepare_form
  end

  # POST /animals or /animals.json
  def create
    if params[:responsavel]
      @animal.responsavel = Responsavel.find(animal_params)
    end

    @animal = Animal.new(animal_params)

    respond_to do |format|
      if @animal.save
        format.html { redirect_to @animal, notice: "Animal was successfully created." }
        format.json { render :show, status: :created, location: @animal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animals/1 or /animals/1.json
  def update
    respond_to do |format|
      if @animal.update(animal_params)
        format.html { redirect_to @animal, notice: "Animal was successfully updated." }
        format.json { render :show, status: :ok, location: @animal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animals/1 or /animals/1.json
  def destroy
    @animal.destroy
    respond_to do |format|
      format.html { redirect_to animals_url, notice: "Animal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def prepare_form
      @responsavels = Responsavel.order :nome
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_animal
      @animal = Animal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animal_params
      params.require(:animal).permit(:responsavel_id, :nome, :especie, :raca, :complicacoes, :idade, :sexo)
    end
end
