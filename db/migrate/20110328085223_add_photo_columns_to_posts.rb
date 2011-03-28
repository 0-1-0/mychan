class AddPhotoColumnsToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :photo_updated_at,   :datetime
  end

  def self.down
    remove_column :posts, :photo_updated_at
  end
end
