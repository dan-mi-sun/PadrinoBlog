PadrinoBlog::App.controllers :authors do
  
  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end
  
  get :new do
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
    @author_list = Author.all
    render :'authors/index'
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
