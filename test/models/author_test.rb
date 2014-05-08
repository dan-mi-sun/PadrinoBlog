require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class AuthorTest < Test::Unit::TestCase
  context "Author Model" do

    should have_many(:posts)
    should have_many(:post_tags)
    should have_many(:tags)
    should have_many(:comments)
    should validate_presence_of(:first_name)
    should validate_presence_of(:last_name)
    should validate_format_of(:email)
    should validate_presence_of(:website)

  end
end
