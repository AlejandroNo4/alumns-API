module SessionsConcern
  extend ActiveSupport::Concern

  included do
    before_action :set_current_user
    before_action :require_login
  end

  def set_current_user
    @current_user ||= Teacher.find_by_id(session[:user_id]) if session[:user_id]
  end

  def require_login
    unless @current_user
      redirect_to api_v1_logged_in_url
    end
  end
end