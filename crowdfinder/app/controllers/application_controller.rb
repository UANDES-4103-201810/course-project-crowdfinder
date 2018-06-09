class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controler?

 protected
 def configure_permitted_parameters
    devise_parameter_sanitizer.permit(sign_up, keys: [:name, :is_admin])
    devise_parameter_sanitizer.permit(sign_up, keys: [:name, :is_admin])
    devise_parameter_sanitizer.permit(sign_up, keys: [:name, :is_admin])
    devise_parameter_sanitizer.permit(sign_up, keys: [:name, :is_admin])
    devise_parameter_sanitizer.permit(sign_up, keys: [:name, :is_admin])
    devise_parameter_sanitizer.permit(sign_up, keys: [:name, :is_admin])
 end

end
