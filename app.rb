require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  # get '/hello' do
  #   "Hello World!"
  # end
  #
  # get '/Goodbye' do
  #   "Goodbye"
  # end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get "/goodbye/:name" do
    @name = params[:name]
    "Goodbye, #{@name}."
  end
  # Code your final two routes here:

  get "/multiply/:num1/:num2" do
    # binding.pry
    @num1 = params[:num1]
    @num2 = params[:num2]
    "#{<%=@num1*@num2>}"
  end
end
