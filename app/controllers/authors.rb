PadrinoBlog::App.controllers :authors do
  layout :'main_layout'

  before :show, :edit, :update, :destroy do
    @individual_author = Author.find(params[:id])
  end
  
  get :new do
    @title = "Create New Author"
    @author = Author.new
    render :'authors/new'
  end

  post :create do
    @author = Author.new(params[:author])
    if @author.save
      flash[:notice] = "WHHHHHHHHHHHHHYYYYYYYYYYYYYYYYYY"
      redirect :'authors'
    else
      @error_message = @author.errors.full_messages
      render :'authors/new'
    end
  end

  get :index do
    @title = "Index of Authors"
    @author_list = Author.all
    render :'authors/index'
  end

  get :show, :with => :id do
    @title = "Show Author"
    render :'authors/show'
  end

  get :edit, :with => :id do
    @title = "Edit Author"
    render :'authors/edit'
  end

  put :update, :with => :id do
    @individual_author.update_attributes(params[:author])
    redirect url_for(:authors, :index)

  end

  get :destroy, :with => :id do
    @individual_author.destroy
    redirect url_for(:authors, :index)
  end

end
