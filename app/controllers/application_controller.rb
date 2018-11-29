class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  before_action :authenticate_user!, except: :home
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
   # For additional fields in app/views/devise/registrations/new.html.erb
   # devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :phone_number, :avatar_url])
  devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username, :phone_number, :photo])
  devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :username, :phone_number, :photo])


 end
end
