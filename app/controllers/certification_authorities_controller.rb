class CertificationAuthoritiesController < ApplicationController
  before_action :set_certification_authority, only: [:show, :edit, :update, :destroy]

  # GET /certification_authorities
  # GET /certification_authorities.json
  def index
    @certification_authorities = CertificationAuthority.all
  end

  # GET /certification_authorities/1
  # GET /certification_authorities/1.json
  def show
  end

  # GET /certification_authorities/new
  def new
    @certification_authority = CertificationAuthority.new
  end

  # GET /certification_authorities/1/edit
  def edit
  end

  # POST /certification_authorities
  # POST /certification_authorities.json
  def create
    @certification_authority = CertificationAuthority.new(certification_authority_params)

    respond_to do |format|
      if @certification_authority.save
        format.html { redirect_to @certification_authority, notice: 'Certification authority was successfully created.' }
        format.json { render :show, status: :created, location: @certification_authority }
      else
        format.html { render :new }
        format.json { render json: @certification_authority.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /certification_authorities/1
  # PATCH/PUT /certification_authorities/1.json
  def update
    respond_to do |format|
      if @certification_authority.update(certification_authority_params)
        format.html { redirect_to @certification_authority, notice: 'Certification authority was successfully updated.' }
        format.json { render :show, status: :ok, location: @certification_authority }
      else
        format.html { render :edit }
        format.json { render json: @certification_authority.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /certification_authorities/1
  # DELETE /certification_authorities/1.json
  def destroy
    @certification_authority.destroy
    respond_to do |format|
      format.html { redirect_to certification_authorities_url, notice: 'Certification authority was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_certification_authority
      @certification_authority = CertificationAuthority.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def certification_authority_params
      params.require(:certification_authority).permit(:name, :code, :cert_authority_type_id, :city_id)
    end
end
