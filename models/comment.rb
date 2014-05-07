class Comment < ActiveRecord::Base
  belongs_to :post
  has_many :replies, :class_name => 'Comment', :foreign_key => :comment_id

  belongs_to :parent, :class_name => 'Comment', :foreign_key => :comment_id

end
