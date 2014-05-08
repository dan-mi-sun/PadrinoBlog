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
      redirect '/'
    else
      flash[:notice] = "WHHHHHHHHHHHHHYYYYYYYYYYYYYYYYYY"
      render :'authors/new'
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
