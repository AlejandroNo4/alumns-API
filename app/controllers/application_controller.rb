class ApplicationController < ActionController::API
  def set_current_user
    @current_user ||= Teacher.find_by_id(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !@current_user.nil
  end
end
