class ParqueosController < ApplicationController
  before_action :set_parqueo, only: [:show, :edit, :update, :destroy]

  # GET /parqueos
  # GET /parqueos.json
  def index
    @parqueos = Parqueo.all
  end

  # GET /parqueos/1
  # GET /parqueos/1.json
  def show
  end

  # GET /parqueos/new
  def new
    @parqueo = Parqueo.new
  end

  # GET /parqueos/1/edit
  def edit
  end

  # POST /parqueos
  # POST /parqueos.json
  def create
    @parqueo = Parqueo.new(parqueo_params)

    respond_to do |format|
      if @parqueo.save
        format.html { redirect_to @parqueo, notice: 'Parqueo was successfully created.' }
        format.json { render :show, status: :created, location: @parqueo }
      else
        format.html { render :new }
        format.json { render json: @parqueo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parqueos/1
  # PATCH/PUT /parqueos/1.json
  def update
    respond_to do |format|
      if @parqueo.update(parqueo_params)
        format.html { redirect_to @parqueo, notice: 'Parqueo was successfully updated.' }
        format.json { render :show, status: :ok, location: @parqueo }
      else
        format.html { render :edit }
        format.json { render json: @parqueo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parqueos/1
  # DELETE /parqueos/1.json
  def destroy
    @parqueo.destroy
    respond_to do |format|
      format.html { redirect_to parqueos_url, notice: 'Parqueo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parqueo
      @parqueo = Parqueo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parqueo_params
      params.require(:parqueo).permit(:estado, :tipo, :fecha)
    end
end
