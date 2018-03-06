class FincasController < ApplicationController
  before_action :set_finca, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /fincas
  # GET /fincas.json
  def index
    @fincas = Finca.all
  end

  # GET /fincas/1
  # GET /fincas/1.json
  def show
    @scalas = @finca.scalas.all
    @scala = Scala.new
  end

  # GET /fincas/new
  def new
    @finca = Finca.new
  end

  # GET /fincas/1/edit
  def edit
  end

  # POST /fincas
  # POST /fincas.json
  def create
    @finca = Finca.new(finca_params)

    respond_to do |format|
      if @finca.save
        format.html { redirect_to @finca, notice: 'Finca was successfully created.' }
        format.json { render :show, status: :created, location: @finca }
      else
        format.html { render :new }
        format.json { render json: @finca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fincas/1
  # PATCH/PUT /fincas/1.json
  def update
    respond_to do |format|
      if @finca.update(finca_params)
        format.html { redirect_to @finca, notice: 'Finca was successfully updated.' }
        format.json { render :show, status: :ok, location: @finca }
      else
        format.html { render :edit }
        format.json { render json: @finca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fincas/1
  # DELETE /fincas/1.json
  def destroy
    @finca.destroy
    respond_to do |format|
      format.html { redirect_to fincas_url, notice: 'Finca was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finca
      @finca = Finca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def finca_params
      params.require(:finca).permit(:region_id, :soil_id, :region_id, :variety_id, :altitude_id, :notes, :finca)
    end
end
