class Author < ActiveRecord::Base

  has_many :posts
  has_many :comments, :through => :posts
  has_many :post_tags, :through => :posts
  has_many :tags, :through => :post_tags

end
