class DogsController < ApplicationController
  before_action :get_cliente
  before_action :set_dog, only: [:show, :edit, :update, :destroy]

  # GET /dogs
  # GET /dogs.json
  def index
    @dogs = @cliente.dogs
  end

  # GET /dogs/1
  # GET /dogs/1.json
  def show
  end

  # GET /dogs/new
  def new
    @dog = @cliente.dogs.build
  end

  # GET /dogs/1/edit
  def edit
  end

  # POST /dogs
  # POST /dogs.json
  def create
    @dog = @cliente.dogs.build(dog_params)

    respond_to do |format|
      if @dog.save
        format.html { redirect_to cliente_dogs_path(@cliente), notice: 'Dog was successfully created.' }
        format.json { render :show, status: :created, location: @dog }
      else
        format.html { render :new }
        format.json { render json: @dog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dogs/1
  # PATCH/PUT /dogs/1.json
  def update
    respond_to do |format|
      if @dog.update(dog_params)
        format.html { redirect_to cliente_dogs_path(@cliente), notice: 'Dog was successfully updated.' }
        format.json { render :show, status: :ok, location: @dog }
      else
        format.html { render :edit }
        format.json { render json: @dog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dogs/1
  # DELETE /dogs/1.json
  def destroy
    @dog.destroy
    respond_to do |format|
      format.html { redirect_to cliente_dogs_path(@cliente), notice: 'Dog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  #Gets current client to share between actions.
  def get_cliente
    @cliente = Cliente.find(params[:cliente_id])
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_dog
      @dog = Dog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dog_params
      params.require(:dog).permit(:cliente_id, :nome, :raca, :genero, :idade, :porte, :castrado, :raiva, :vacinas)
    end
end
