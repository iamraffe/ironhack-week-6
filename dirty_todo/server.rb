require "sinatra"
require "sinatra/reloader" if development?
require "pry"
require_relative('./models/Todo.rb')
require_relative('./models/TodoList.rb')

joshs_todos = TodoList.new([
  Todo.new("Buy Milk", 10),
  Todo.new("Walk the dog", 5)
])

get '/todos' do
  @todos = joshs_todos
  @hours_needed = @todos.total_time
  erb :todos
end

get '/new_todo' do
  erb :new_todo
end

post '/create_todo' do
  joshs_todos.add_todo(Todo.new(params[:content], params[:time].to_i))
  redirect('/todos')
end
