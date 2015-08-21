class BestEversController < ApplicationController
  before_action :set_best_ever, only: [:show, :edit, :update, :destroy]

  # GET /best_evers
  # GET /best_evers.json
  def index
    @best_evers = BestEver.all
  end

  # GET /best_evers/1
  # GET /best_evers/1.json
  def show
  end

  # GET /best_evers/new
  def new
    @best_ever = BestEver.new
  end

  # GET /best_evers/1/edit
  def edit
  end

  # POST /best_evers
  # POST /best_evers.json
  def create
    @best_ever = BestEver.new(best_ever_params)

    respond_to do |format|
      if @best_ever.save
        format.html { redirect_to @best_ever, notice: 'Best ever was successfully created.' }
        format.json { render :show, status: :created, location: @best_ever }
      else
        format.html { render :new }
        format.json { render json: @best_ever.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /best_evers/1
  # PATCH/PUT /best_evers/1.json
  def update
    respond_to do |format|
      if @best_ever.update(best_ever_params)
        format.html { redirect_to @best_ever, notice: 'Best ever was successfully updated.' }
        format.json { render :show, status: :ok, location: @best_ever }
      else
        format.html { render :edit }
        format.json { render json: @best_ever.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /best_evers/1
  # DELETE /best_evers/1.json
  def destroy
    @best_ever.destroy
    respond_to do |format|
      format.html { redirect_to best_evers_url, notice: 'Best ever was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_best_ever
      @best_ever = BestEver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def best_ever_params
      params.require(:best_ever).permit(:user, :song, :artist, :comment)
    end
end
