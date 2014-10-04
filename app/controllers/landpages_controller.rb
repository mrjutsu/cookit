class LandpagesController < ApplicationController
  #before_action :set_landpage, only: [:show]
  #before_action :redirect_if_authenticated

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
  end

  # GET /landpages/1/edit
  def edit
  end

  # POST /landpages
  # POST /landpages.json
  def create
  end

  # PATCH/PUT /landpages/1
  # PATCH/PUT /landpages/1.json
  def update
  end

  # DELETE /landpages/1
  # DELETE /landpages/1.json
  def destroy
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
