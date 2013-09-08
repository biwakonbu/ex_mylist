class TopController < ApplicationController
  skip_filter :signin_required

  def index

  end

  def signin_twitter
    redirect_to "/contents/index" if session[:user_id]
  end
end
