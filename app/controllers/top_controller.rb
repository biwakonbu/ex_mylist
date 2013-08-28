class TopController < ApplicationController
  def index
    redirect_to "/contents/index" if session[:user_id]
  end
end
