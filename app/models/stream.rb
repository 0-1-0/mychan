class Stream < ActiveRecord::Base
  belongs_to :section
  has_many :posts
  
  cattr_reader :per_page
  @@per_page = 10
end
