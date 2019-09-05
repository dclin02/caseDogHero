class PasseadoresController < ApplicationController
  before_action :set_passeadore, only: [:show, :edit, :update, :destroy]

  # GET /passeadores
  # GET /passeadores.json
  def index
    @passeadores = Passeadore.all
  end

  # GET /passeadores/1
  # GET /passeadores/1.json
  def show
  end

  # GET /passeadores/new
  def new
    @passeadore = Passeadore.new
  end

  # GET /passeadores/1/edit
  def edit
  end

  # POST /passeadores
  # POST /passeadores.json
  def create
    @passeadore = Passeadore.new(passeadore_params)

    respond_to do |format|
      if @passeadore.save
        format.html { redirect_to @passeadore, notice: 'Passeadore was successfully created.' }
        format.json { render :show, status: :created, location: @passeadore }
      else
        format.html { render :new }
        format.json { render json: @passeadore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /passeadores/1
  # PATCH/PUT /passeadores/1.json
  def update
    respond_to do |format|
      if @passeadore.update(passeadore_params)
        format.html { redirect_to @passeadore, notice: 'Passeadore was successfully updated.' }
        format.json { render :show, status: :ok, location: @passeadore }
      else
        format.html { render :edit }
        format.json { render json: @passeadore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /passeadores/1
  # DELETE /passeadores/1.json
  def destroy
    @passeadore.destroy
    respond_to do |format|
      format.html { redirect_to passeadores_url, notice: 'Passeadore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_passeadore
      @passeadore = Passeadore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def passeadore_params
      params.require(:passeadore).permit(:email, :nome, :sobrenome, :tel, :bairro, :preco)
    end
end
