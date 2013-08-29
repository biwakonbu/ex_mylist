class ContentsController < ApplicationController

  def index
    if session[:user_id]
      @user = User.find_by_uid(session[:twitter_id])
      @movie = Movie.find(:all, :conditions => {:user => session[:user_id].to_s})
      @url = "http://www.nicovideo.jp/watch/"
    end
  end

  def get
    if session[:user_id]
      list = NicoNicoVideo::MyList.new(params[:sm_id])

      list.each_video do |v|
        Movie.create_with_movie(v["item_data"], session[:user_id]) unless Movie.find_by_video_id(v["item_data"]["video_id"])
      end
    end

    redirect_to '/contents/index'
  end
end
