class DeitiesController < ApplicationController
  before_action :set_deity, only: %i[ show edit update destroy ]




  # GET /deities or /deities.json
  def index
    @deities = Deity.all
  end
  















  # GET /deities/1 or /deities/1.json
  def show
  end

  # GET /deities/new
  def new
    @deity = Deity.new
  end



  # POST /deities or /deities.json
  def create
    @deity = Deity.new(deity_params)

    respond_to do |format|
      if @deity.save
        format.html { redirect_to @deity, notice: "Deity was successfully created." }
        format.json { render :show, status: :created, location: @deity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @deity.errors, status: :unprocessable_entity }
      end
    end
  end




  # GET /deities/1/edit
  def edit
  end
  # PATCH/PUT /deities/1 or /deities/1.json
  def update
    respond_to do |format|
      if @deity.update(deity_params)
        format.html { redirect_to @deity, notice: "Deity was successfully updated." }
        format.json { render :show, status: :ok, location: @deity }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @deity.errors, status: :unprocessable_entity }
      end
    end
  end




  # DELETE /deities/1 or /deities/1.json
  def destroy
    @deity.destroy
    respond_to do |format|
      format.html { redirect_to deities_url, notice: "Deity was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deity
      @deity = Deity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def deity_params
      params.require(:deity).permit(:name, :power, :time_judgment, :height, :on_earth, :in_space, :wears_glasses, :human_sacrifices, :sacrifices)
    end
end
