require "sinatra"

get "/" do
	"My first Sinatra app."
end

get '/hi' do
  "Hello World!"
end

get '/about' do
  "This is a brief bio."
end

get "/author" do
	erb(:author)
end