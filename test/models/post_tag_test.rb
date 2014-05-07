require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class PostTagTest < Test::Unit::TestCase
  context "PostTag Model" do

    should belong_to(:post)
    should belong_to(:tag)
  end
end
