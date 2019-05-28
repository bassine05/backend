class ReservedDomainsController < ApplicationController
  before_action :set_reserved_domain, only: [:show, :edit, :update, :destroy]

  # GET /reserved_domains
  # GET /reserved_domains.json
  def index
    @reserved_domains = ReservedDomain.all
  end

  # GET /reserved_domains/1
  # GET /reserved_domains/1.json
  def show
  end

  # GET /reserved_domains/new
  def new
    @reserved_domain = ReservedDomain.new
  end

  # GET /reserved_domains/1/edit
  def edit
  end

  # POST /reserved_domains
  # POST /reserved_domains.json
  def create
    @reserved_domain = ReservedDomain.new(reserved_domain_params)

    respond_to do |format|
      if @reserved_domain.save
        format.html { redirect_to @reserved_domain, notice: 'Reserved domain was successfully created.' }
        format.json { render :show, status: :created, location: @reserved_domain }
      else
        format.html { render :new }
        format.json { render json: @reserved_domain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reserved_domains/1
  # PATCH/PUT /reserved_domains/1.json
  def update
    respond_to do |format|
      if @reserved_domain.update(reserved_domain_params)
        format.html { redirect_to @reserved_domain, notice: 'Reserved domain was successfully updated.' }
        format.json { render :show, status: :ok, location: @reserved_domain }
      else
        format.html { render :edit }
        format.json { render json: @reserved_domain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reserved_domains/1
  # DELETE /reserved_domains/1.json
  def destroy
    @reserved_domain.destroy
    respond_to do |format|
      format.html { redirect_to reserved_domains_url, notice: 'Reserved domain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reserved_domain
      @reserved_domain = ReservedDomain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reserved_domain_params
      params.require(:reserved_domain).permit(:code_auth, :motif, :tag_id)
    end
end
