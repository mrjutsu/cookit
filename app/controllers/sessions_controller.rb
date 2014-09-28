class SessionsController < ApplicationController
  #before_action :set_session, only: [:show, :edit, :update, :destroy]

  # GET /sessions/new
  def new
    @user = User.new
  end

  def create
     #@user = User.find_by(username: user_params[:username])
     #@user.authenticate(user_params[:password])
    #if @user && @user.authenticate(user_params[:password])
    #  session[:user_id] = @user.id
    #  flash[:notice] = "Authenticated successfully"
      #render text: "#{flash[:notice]}"
   #   redirect_to(recipees_path)
   # else
   #   @user = User.new
   #   flash[:alert] = "Username or password invalid"
   #   render :new
   # end
     @user = User.find_by(username: user_params[:username])
     @user.authenticate(user_params[:password])
    if @user && @user.authenticate(user_params[:password])
      session[:user_id] = @user.id
      flash[:notice] = "Authenticated successfully"
      #render text: "#{flash[:notice]}"
      redirect_to(recipees_path)
    else
      @user = User.new
      flash[:alert] = "Username or password invalid"
      render :new
    end
  end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    #session[:user_id] = nil
    #redirect_to( new_user_session_path )
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end
  #def redirect_if_authenticated
  #  redirect_to(recipees_path) if authenticated?
  #end
  #def redirect_if_authenticated
  #  redirect_to(recipees_path) if authenticated?
  #end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_session
  #     @session = Session.find(params[:id])
  #   end

  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def session_params
  #     params[:session]
  #   end
end
