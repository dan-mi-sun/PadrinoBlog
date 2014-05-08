class Post < ActiveRecord::Base

  has_many :comments
  belongs_to :author
  has_many :post_tags
  has_many :tags, :through => :post_tags
  validates_presence_of :author_id, :presence => :true

end
