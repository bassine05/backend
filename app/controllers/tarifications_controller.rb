class TarificationsController < ApplicationController
  before_action :set_tarification, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token
  # GET /tarifications
  # GET /tarifications.json
  def index
    @tarifications = Tarification.all
  end

  # GET /tarifications/1
  # GET /tarifications/1.json
  def show
  end

  # GET /tarifications/new
  def new
    @tarification = Tarification.new
  end

  # GET /tarifications/1/edit
  def edit
  end

  # POST /tarifications
  # POST /tarifications.json
  def create
    @tarification = Tarification.new(tarification_params)

    respond_to do |format|
      if @tarification.save
        format.html { redirect_to @tarification, notice: 'Tarification was successfully created.' }
        format.json { render :show, status: :created, location: @tarification }
      else
        format.html { render :new }
        format.json { render json: @tarification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tarifications/1
  # PATCH/PUT /tarifications/1.json
  def update
    respond_to do |format|
      if @tarification.update(tarification_params)
        format.html { redirect_to @tarification, notice: 'Tarification was successfully updated.' }
        format.json { render :show, status: :ok, location: @tarification }
      else
        format.html { render :edit }
        format.json { render json: @tarification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tarifications/1
  # DELETE /tarifications/1.json
  def destroy
    @tarification.destroy
    respond_to do |format|
      format.html { redirect_to tarifications_url, notice: 'Tarification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tarification
      @tarification = Tarification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tarification_params
      params.require(:tarification).permit(:price, :type, :year)
    end
end
