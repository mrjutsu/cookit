class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #def current_user
  #	@current_user ||= User.find(session[:user_id]) rescue nil
  #end

 # def redirect_unless_authenticated
 # 	redirect_to(new_user_session_path) unless authenticated?
  #end

  #def authenticated?
  	#!current_user.nil?
  	#=> return true if current_user is set, false otherwise
  #	!!current_user
  #end

  #This redirects after sign in
  def after_sign_in_path_for(user)
     recipees_path
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @request.env["devise.mapping"] = Devise.mappings[:user]
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username << :name
    devise_parameter_sanitizer.for(:account_update) << :username << :name << :profile_pic << :bio << :favorite_foods << :location << :url
  end

end
