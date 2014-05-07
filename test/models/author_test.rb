require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class AuthorTest < Test::Unit::TestCase
  context "Author Model" do

    should have_many(:posts)

  end
end
