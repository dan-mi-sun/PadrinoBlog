PadrinoBlog::App.controllers :posts do
  layout :'main_layout'
  
  get :new do
    @post = Post.new
    render :'posts/new'
  end

  post :create do
    @post = Post.new(params[:post])

    if @post.save
      flash[:notice] = "Post has been published"
      redirect url_for(:posts, :index)
    else 
      @error_message = @post.errors.full_messages
      render :'posts/index'
    end

  end

  get :index do
    @post_list = Post.all
    render :'posts/index'
  end

  get :show, :with => :id do
    render :'posts/show'
  end

  get :edit, :with => :id do
    render :'posts/edit'
  end


  put :update do
    @individual_post.update_attributes(params[:post])
    redirect url_for(:posts, :index)  
  end

  delete :destroy, :with => :id do
    @individual_post.destroy
    redirect url_for(:posts, :index)  
  end
  
end
