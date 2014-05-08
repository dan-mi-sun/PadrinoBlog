class Comment < ActiveRecord::Base
  belongs_to :post
  has_many :replies, :class_name => 'Comment', :foreign_key => :comment_id

  belongs_to :parent, :class_name => 'Comment', :foreign_key => :comment_id

  validates_presence_of :body, :presence => :true

  after_create do
# # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN

    @client.account.messages.create(
      :from => '+442393162418',
      :to => '+447442808919',
      :body => "Someone left you a comment: #{self.body}" 
    )

  end

end

