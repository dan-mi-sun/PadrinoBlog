require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class TagTest < Test::Unit::TestCase
  context "Tag Model" do

  should have_many(:post_tags)
  should have_many(:posts).through(:post_tags)
  should have_many(:authors).through(:posts)
  end
end
