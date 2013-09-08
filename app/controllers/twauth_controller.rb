class TwauthController < ApplicationController
  def signin
    redirect_to "/contents/index" if session[:user_id]
  end
end
