class ScalasController < ApplicationController
  before_action :set_scala, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /scalas
  # GET /scalas.json
  def index
    @scalas = Scala.all
  end

  # GET /scalas/1
  # GET /scalas/1.json
  def show
  end

  # GET /scalas/new
  def new
    @scala = Scala.new
  end

  # GET /scalas/1/edit
  def edit
  end

  # POST /scalas
  # POST /scalas.json
  def create
    @scala = Scala.new(scala_params)

    respond_to do |format|
      if @scala.save
        finca = @scala.finca
        format.html { redirect_to finca, notice: 'Scala was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @scala.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scalas/1
  # PATCH/PUT /scalas/1.json
  def update
    respond_to do |format|
      if @scala.update(scala_params)
        format.html { redirect_to @scala, notice: 'Scala was successfully updated.' }
        format.json { render :show, status: :ok, location: @scala }
      else
        format.html { render :edit }
        format.json { render json: @scala.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scalas/1
  # DELETE /scalas/1.json
  def destroy
    finca = @scala.finca
    @scala.destroy
    respond_to do |format|
      format.html { redirect_to finca, notice: 'Scala was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scala
      @scala = Scala.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scala_params
      params.require(:scala).permit(:finca_id, :harvested, :qqt, :paid)
    end
end
