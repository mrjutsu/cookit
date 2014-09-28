class LandpagesController < ApplicationController
  before_action :set_landpage, only: [:show, :edit, :update, :destroy]

  # GET /landpages
  # GET /landpages.json
  def index
    @landpages = Landpage.all
  end

  # GET /landpages/1
  # GET /landpages/1.json
  def show
  end

  # GET /landpages/new
  def new
    @landpage = Landpage.new
  end

  # GET /landpages/1/edit
  def edit
  end

  # POST /landpages
  # POST /landpages.json
  def create
    @landpage = Landpage.new(landpage_params)

    respond_to do |format|
      if @landpage.save
        format.html { redirect_to @landpage, notice: 'Landpage was successfully created.' }
        format.json { render :show, status: :created, location: @landpage }
      else
        format.html { render :new }
        format.json { render json: @landpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /landpages/1
  # PATCH/PUT /landpages/1.json
  def update
    respond_to do |format|
      if @landpage.update(landpage_params)
        format.html { redirect_to @landpage, notice: 'Landpage was successfully updated.' }
        format.json { render :show, status: :ok, location: @landpage }
      else
        format.html { render :edit }
        format.json { render json: @landpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /landpages/1
  # DELETE /landpages/1.json
  def destroy
    @landpage.destroy
    respond_to do |format|
      format.html { redirect_to landpages_url, notice: 'Landpage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_landpage
      @landpage = Landpage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def landpage_params
      params[:landpage]
    end
end
