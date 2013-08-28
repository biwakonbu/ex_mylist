class Movie < ActiveRecord::Base
  attr_accessible :id, :thumbnail_url, :title, :user, :video_id

  def self.create_with_movie(sm, user_id)
    create! do |video|
      video.user = user_id
      video.thumbnail_url = sm["thumbnail_url"]
      video.title = sm["title"]
      video.video_id = sm["video_id"]
    end
  end
end
