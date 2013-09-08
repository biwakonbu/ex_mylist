class TopController < ApplicationController
  skip_filter :signin_required

  def index
    redirect_to "/contents/index" if session[:user_id]
  end
end
