PadrinoBlog::App.controllers :posts do
  
  get :new do
    @post = Post.new
    render :'posts/new'
  end

  post :create do
    @post = Post.new(params[:post])

    if @post.save
      flash[:notice] = "Post has been published"
      redirect url_for(:authors, :index)
    else 
      @error_message = @post.errors.full_messages
      render :'posts/new'
    end

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
