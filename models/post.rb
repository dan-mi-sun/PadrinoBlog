class Post < ActiveRecord::Base

  has_many :comments
  belongs_to :author
  has_many :post_tags

end
