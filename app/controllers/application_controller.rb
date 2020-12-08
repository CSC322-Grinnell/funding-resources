class ApplicationController < ActionController::Base
  
  before_action :set_theme

  def set_theme
    if params[:theme].present?
      theme = params[:theme].to_sym
      cookies[:theme] = theme
      redirect_to params[:current_path]
    end
  end
  
  private

  # Checks that a user is signed in and has admin privileges.
  # If not, ask them to sign in again.
  def authenticate_admin_user!
    unless current_user && current_user.admin?
      reset_session
      redirect_to new_user_session_path, alert: t('access_denied')
    end
  end

  # Redirects admin users to the admin dashboard on login.
  # Everyone else is sent to their recent path if it was stored,
  # or the default path otherwise.
  def after_sign_in_path_for(resource)
    if current_user.admin?
      admin_dashboard_path
    else
      stored_location_for(resource) || super
    end
  end
  
  

end
