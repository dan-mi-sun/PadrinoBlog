PadrinoBlog::App.controllers :posts do
  
  get :new do
    @post = Post.new
    render :'posts/new'
  end

  post :create do

  end

  get :index do

  end

  get :show do

  end

  get :edit do

  end

  put :update do

  end

  delete :destroy do

  end

end
