a = Author.all

a.each do |author|

  author.posts << Post.new(:title => "This is an Example Empty Post", :body => "This is just an example of some post data")

end



