class RankingAuthoritiesController < ApplicationController
  before_action :set_ranking_authority, only: [:show, :edit, :update, :destroy]

  # GET /ranking_authorities
  # GET /ranking_authorities.json
  def index
    @ranking_authorities = RankingAuthority.all
  end

  # GET /ranking_authorities/1
  # GET /ranking_authorities/1.json
  def show
  end

  # GET /ranking_authorities/new
  def new
    @ranking_authority = RankingAuthority.new
  end

  # GET /ranking_authorities/1/edit
  def edit
  end

  # POST /ranking_authorities
  # POST /ranking_authorities.json
  def create
    @ranking_authority = RankingAuthority.new(ranking_authority_params)

    respond_to do |format|
      if @ranking_authority.save
        format.html { redirect_to @ranking_authority, notice: 'Ranking authority was successfully created.' }
        format.json { render :show, status: :created, location: @ranking_authority }
      else
        format.html { render :new }
        format.json { render json: @ranking_authority.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ranking_authorities/1
  # PATCH/PUT /ranking_authorities/1.json
  def update
    respond_to do |format|
      if @ranking_authority.update(ranking_authority_params)
        format.html { redirect_to @ranking_authority, notice: 'Ranking authority was successfully updated.' }
        format.json { render :show, status: :ok, location: @ranking_authority }
      else
        format.html { render :edit }
        format.json { render json: @ranking_authority.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ranking_authorities/1
  # DELETE /ranking_authorities/1.json
  def destroy
    @ranking_authority.destroy
    respond_to do |format|
      format.html { redirect_to ranking_authorities_url, notice: 'Ranking authority was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ranking_authority
      @ranking_authority = RankingAuthority.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ranking_authority_params
      params.require(:ranking_authority).permit(:name, :code)
    end
end
