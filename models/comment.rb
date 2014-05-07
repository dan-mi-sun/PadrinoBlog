class Comment < ActiveRecord::Base
  belongs_to :post
  has_many :replies, :class_name => 'Comment'

  belongs_to :parent, :class_name => 'Comment'
end
