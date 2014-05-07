require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class CommentTest < Test::Unit::TestCase
  context "Comment Model" do

    should belong_to(:post)
    should have_many(:replies)
    #should belong_to(:parent)

  end
end
