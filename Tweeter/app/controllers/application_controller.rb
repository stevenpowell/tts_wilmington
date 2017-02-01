class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :username, :bio, :location, :email, :password, :password_confirmation])

    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :username, :bio, :location, :email, :password, :password_confirmation])
  end

#Added these per paperclip instruction
  def create
  @user = User.create( user_params )
end

private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

def user_params
  params.require(:user).permit(:avatar)
end
#END
end
