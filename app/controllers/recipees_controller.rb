class RecipeesController < ApplicationController
  #before_action :redirect_unless_authenticated
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  before_action :set_recipee, only: [:show, :update]

  # GET /recipees
  # GET /recipees.json
  def index
    @recipees = Recipee.all
    # @recipees = Recipee.search(params[:search])
    #@recipees = Recipee.new
  end

  # GET /recipees/1
  # GET /recipees/1.json
  def show
    #render :recipee
  end

  # GET /recipees/new
  def new
    @recipee = Recipee.new
  end

  # GET /recipees/1/edit
  def edit
    @recipee = Recipee.find(params[:id])
  end

  # POST /recipees
  # POST /recipees.json
  def create
    @recipee = current_user.recipees.new(recipee_params)

    if @recipee.save
      redirect_to recipees_path, notice: 'La receta fue creada exitosamente'
    else
      redirect_to recipees_path, notice: 'No se pudo crear la receta'
    end

    # respond_to do |format|
    #   if @recipee.save
    #     format.html { redirect_to @recipee, notice: 'Recipee was successfully created.' }
    #     format.json { render :show, status: :created, location: @recipee }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @recipee.errors, status: :unprocessable_entity }
    #   end
    # end

    # begin
    #   @recipee = current_user.recipees.new(recipee_params)
    #   redirect_to recipees_path, notice: 'Receta creada exitosamente'
    # rescue
    #   flash[:alert] = 'La receta no pudo ser creada'
    #   @recipees = Recipee.all
    #   render :index
    # end

  end

  # PATCH/PUT /recipees/1
  # PATCH/PUT /recipees/1.json
  def update
    if current_user == @recipee.user || current_user.admin == true
      respond_to do |format|
        if @recipee.update(recipee_params)
          format.html { redirect_to @recipee, notice: 'Recipee was successfully updated.' }
          format.json { render :show, status: :ok, location: @recipee }
        else
          format.html { render :edit }
          format.json { render json: @recipee.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to recipees_url
    end
  end

  # DELETE /recipees/1
  # DELETE /recipees/1.json
  def destroy
    if current_user == recipee.user || current_user.admin == true
      @recipee.destroy
      redirect_to recipees_url, notice: 'Receta eliminada satisfactoriamente'
    else
      redirect_to recipees_url
    end
    # respond_to do |format|
    #   format.html { redirect_to recipees_url, notice: 'Recipee was successfully destroyed.' }
    #   format.json { head :no_content }
    #end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipee
      @recipee = Recipee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipee_params
      #Final params
      #params.require(:recipee).permit(:name, :ingredients, :food_type, :ocassion, :description, :picture, :eating_qtty, :prep_time, :country, :difficulty, :rating, :location)

      #Test params
      params.require(:recipee).permit(:name, :ingredients, :food_type, :ocassion, :description, :eating_qtty, :hours, :minutes, :difficulty, :rating, :tips, :avatar)
    end
end
