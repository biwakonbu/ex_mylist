class Movie < ActiveRecord::Base
  attr_accessible :id, :thumbnail_url, :title, :user, :video_id
end
