require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class PostTest < Test::Unit::TestCase
  context "Post Model" do

    should have_many :comments
    should have_many :post_tags
    should belong_to :author
    should have_many(:tags).through(:post_tags)
    should validate_presence_of(:author_id)

  end
end
