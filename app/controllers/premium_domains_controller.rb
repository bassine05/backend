class PremiumDomainsController < ApplicationController
  before_action :set_premium_domain, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token
  # GET /premium_domains
  # GET /premium_domains.json
  def index
    @premium_domains = PremiumDomain.all
  end

  # GET /premium_domains/1
  # GET /premium_domains/1.json
  def show
  end

  # GET /premium_domains/new
  def new
    @premium_domain = PremiumDomain.new
  end

  # GET /premium_domains/1/edit
  def edit
  end

  # POST /premium_domains
  # POST /premium_domains.json
  def create
    @premium_domain = PremiumDomain.new(premium_domain_params)

    respond_to do |format|
      if @premium_domain.save
        format.html { redirect_to @premium_domain, notice: 'Premium domain was successfully created.' }
        format.json { render :show, status: :created, location: @premium_domain }
      else
        format.html { render :new }
        format.json { render json: @premium_domain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /premium_domains/1
  # PATCH/PUT /premium_domains/1.json
  def update
    respond_to do |format|
      if @premium_domain.update(premium_domain_params)
        format.html { redirect_to @premium_domain, notice: 'Premium domain was successfully updated.' }
        format.json { render :show, status: :ok, location: @premium_domain }
      else
        format.html { render :edit }
        format.json { render json: @premium_domain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /premium_domains/1
  # DELETE /premium_domains/1.json
  def destroy
    @premium_domain.destroy
    respond_to do |format|
      format.html { redirect_to premium_domains_url, notice: 'Premium domain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_premium_domain
      @premium_domain = PremiumDomain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def premium_domain_params
      params.require(:premium_domain).permit(:offre, :date_debut, :date_fin, :categorie_id)
    end
end
