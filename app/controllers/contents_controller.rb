class ContentsController < ApplicationController
  def index
    @user = User.find_by_uid(session[:twitter_id])
  end
end
