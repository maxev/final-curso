class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  protected

  def authenticate_normal!
  	redirect_to root_path unless current_user.is_admin?
  end

end
