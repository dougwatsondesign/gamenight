class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  

 protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :username, :birthday, :location, :gender, :avatar])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :username, :birthday, :location, :gender, :avatar])
    end

end
