class Post < ActiveRecord::Base
  validates :message, :presence => true
  belongs_to :stream
  
  has_attached_file :photo,
      :styles => { :medium => "200x200>", :large => "1600x1600>" } 
end
