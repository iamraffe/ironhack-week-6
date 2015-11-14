require "sinatra"
require_relative "lib/calculator.rb"
get '/' do
  erb :index
end

post '/solve' do
  "#{Calculator.new.solve(params[:operation], params[:first].to_f, params[:second].to_f)}"
end

# get '/addition' do
#   erb :addition
# end

# post "/calculate_addition" do
#   "#{params['operation']}"
#   first = params[:first_number].to_f
#   second = params[:second_number].to_f
#   result = Calculator.new.addition(first,second)
#   "#{first} + #{second} = #{result} you are welcome brotha"
#   "#{params[:operation]}"
# end
