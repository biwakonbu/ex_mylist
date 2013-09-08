class TopController < ApplicationController
  def index

  end

  def signin_twitter
    redirect_to "/contents/index" if session[:user_id]
  end
end
