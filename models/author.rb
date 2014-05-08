class Author < ActiveRecord::Base

  has_many :posts
  has_many :comments, :through => :posts
  has_many :post_tags, :through => :posts
  has_many :tags, :through => :post_tags
  validates :first_name, :last_name, :website,  :presence => :true
  validates :email, format: { with: /.*@.*/, message: "email must contain @"} 

end
