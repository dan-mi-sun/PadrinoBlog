PadrinoBlog::App.controllers :posts do
  layout :'main_layout'
 
  before :show, :edit, :update, :destroy  do
    @individual_post = Post.find(params[:id])
  end

  before :new, :create, :edit, :update do
     @author = Author.all.map{ |author| [author.first_name, author.id] } 
  end

  get :new do
    @title = "Create Post"
    @post = Post.new
    render :'posts/new'
  end

  post :create do
    @post = Post.new(params[:post])
    if @post.save
      flash[:notice] = "Post has been published"
      render :'posts/new'
    else 
      @error_message = @post.errors.full_messages
      render :'posts/new'
    end
  end

  get :index do
    @title = "Index of Posts"
    @post_list = Post.all
    render :'posts/index'
  end

  get :show, :with => :id do
    @title = "Show Post"
    render :'posts/show'
  end

  get :edit, :with => :id do
    @title = "Edit Post"
    render :'posts/edit'
  end

  put :update do
    @individual_post.update_attributes(params[:post])
    redirect url_for(:posts, :index)  
  end

  get :destroy, :with => :id do
    @individual_post.destroy
    redirect url_for(:posts, :index)  
  end
  
end
