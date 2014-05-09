PadrinoBlog::App.controllers :authors do
  layout :'main_layout'
  
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

  get :show, :with => :id do
    @individual_author = Author.find(params[:id])
    render :'authors/show'
  end

  get :edit do

  end

  put :update do

  end

  delete :destroy do

  end

end
