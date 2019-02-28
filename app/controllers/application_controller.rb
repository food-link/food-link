class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    added_attrs = [:email, :password, :password_confirmation,
                   :remember_me, :current_password, :role,
                   profile_attributes: %i[addr_line_1 addr_line_2 city state zip phone_number name]]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
  end
end
