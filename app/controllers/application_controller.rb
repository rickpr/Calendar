class ApplicationController < ActionController::Base
  before_filter :cas_filter
  helper_method :current_user

  def cas_filter
    RubyCAS::Filter.filter(self)
  end

  def current_user
      User.find_by_netid(session[:cas_user]) if User.find_by_netid(session[:cas_user])
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
