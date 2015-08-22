class CertAuthorityTypesController < ApplicationController
  before_action :set_cert_authority_type, only: [:show, :edit, :update, :destroy]

  # GET /cert_authority_types
  # GET /cert_authority_types.json
  def index
    @cert_authority_types = CertAuthorityType.all
  end

  # GET /cert_authority_types/1
  # GET /cert_authority_types/1.json
  def show
  end

  # GET /cert_authority_types/new
  def new
    @cert_authority_type = CertAuthorityType.new
  end

  # GET /cert_authority_types/1/edit
  def edit
  end

  # POST /cert_authority_types
  # POST /cert_authority_types.json
  def create
    @cert_authority_type = CertAuthorityType.new(cert_authority_type_params)

    respond_to do |format|
      if @cert_authority_type.save
        format.html { redirect_to @cert_authority_type, notice: 'Cert authority type was successfully created.' }
        format.json { render :show, status: :created, location: @cert_authority_type }
      else
        format.html { render :new }
        format.json { render json: @cert_authority_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cert_authority_types/1
  # PATCH/PUT /cert_authority_types/1.json
  def update
    respond_to do |format|
      if @cert_authority_type.update(cert_authority_type_params)
        format.html { redirect_to @cert_authority_type, notice: 'Cert authority type was successfully updated.' }
        format.json { render :show, status: :ok, location: @cert_authority_type }
      else
        format.html { render :edit }
        format.json { render json: @cert_authority_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cert_authority_types/1
  # DELETE /cert_authority_types/1.json
  def destroy
    @cert_authority_type.destroy
    respond_to do |format|
      format.html { redirect_to cert_authority_types_url, notice: 'Cert authority type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cert_authority_type
      @cert_authority_type = CertAuthorityType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cert_authority_type_params
      params.require(:cert_authority_type).permit(:name)
    end
end
