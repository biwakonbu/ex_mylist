class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :id
      t.string :user
      t.string :video_id
      t.string :title
      t.string :thumbnail_url

      t.timestamps
    end
  end
end
