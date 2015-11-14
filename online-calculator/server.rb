require "sinatra"
require "sinatra/reloader" if development?

require_relative "lib/calculator.rb"

enable(:sessions)


get '/' do
  erb :index
end

post '/solve' do
  "#{Calculator.new.solve(params[:operation], params[:first].to_f, params[:second].to_f)}"
end
