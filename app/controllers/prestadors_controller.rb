class PrestadorsController < ApplicationController
  before_action :set_prestador, only: [:show, :edit, :update, :destroy]

  # GET /prestadors
  # GET /prestadors.json
  def index
    @prestadors = Prestador.all
  end

  # GET /prestadors/1
  # GET /prestadors/1.json
  def show
  end

  # GET /prestadors/new
  def new
    @prestador = Prestador.new
  end

  # GET /prestadors/1/edit
  def edit
  end

  # POST /prestadors
  # POST /prestadors.json
  def create
    @prestador = Prestador.new(prestador_params)

    respond_to do |format|
      if @prestador.save
        format.html { redirect_to @prestador, notice: 'Prestador was successfully created.' }
        format.json { render action: 'show', status: :created, location: @prestador }
      else
        format.html { render action: 'new' }
        format.json { render json: @prestador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prestadors/1
  # PATCH/PUT /prestadors/1.json
  def update
    respond_to do |format|
      if @prestador.update(prestador_params)
        format.html { redirect_to @prestador, notice: 'Prestador was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @prestador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prestadors/1
  # DELETE /prestadors/1.json
  def destroy
    @prestador.destroy
    respond_to do |format|
      format.html { redirect_to prestadors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prestador
      @prestador = Prestador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prestador_params
      params.require(:prestador).permit(:servicios, :tarifas, :promociones, :puntos, :contactos, :websites)
    end
end
