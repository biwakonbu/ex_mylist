class ApplicationController < ActionController::Base
  before_filter :signin_required, :except => :signin
  protect_from_forgery
  helper_method :signed_in?

  private
  def signed_in?
    return true if session[:user_id]
    false
  end

  def signin_required
    redirect_to :controller => "top", :action => "index"
  end
end
