class ApplicationController < ActionController::Base
  
  before_action :configure_permitted_parameters, if: :devise_controller?


 def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up) do |user_params|
    user_params.permit({ roles: [] },:email, :password, :password_confirmation,:first_name,:last_name,:gender,:country,:state,:city,:area,:pincode,:user_type)
  end
 end

end