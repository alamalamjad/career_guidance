class StudyModesController < ApplicationController
  before_action :set_study_mode, only: [:show, :edit, :update, :destroy]

  # GET /study_modes
  # GET /study_modes.json
  def index
    @study_modes = StudyMode.all
  end

  # GET /study_modes/1
  # GET /study_modes/1.json
  def show
  end

  # GET /study_modes/new
  def new
    @study_mode = StudyMode.new
  end

  # GET /study_modes/1/edit
  def edit
  end

  # POST /study_modes
  # POST /study_modes.json
  def create
    @study_mode = StudyMode.new(study_mode_params)

    respond_to do |format|
      if @study_mode.save
        format.html { redirect_to @study_mode, notice: 'Study mode was successfully created.' }
        format.json { render :show, status: :created, location: @study_mode }
      else
        format.html { render :new }
        format.json { render json: @study_mode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /study_modes/1
  # PATCH/PUT /study_modes/1.json
  def update
    respond_to do |format|
      if @study_mode.update(study_mode_params)
        format.html { redirect_to @study_mode, notice: 'Study mode was successfully updated.' }
        format.json { render :show, status: :ok, location: @study_mode }
      else
        format.html { render :edit }
        format.json { render json: @study_mode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_modes/1
  # DELETE /study_modes/1.json
  def destroy
    @study_mode.destroy
    respond_to do |format|
      format.html { redirect_to study_modes_url, notice: 'Study mode was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study_mode
      @study_mode = StudyMode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def study_mode_params
      params.require(:study_mode).permit(:name)
    end
end
