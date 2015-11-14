class TodoList
  attr_reader :list_of_todos
  def initialize(list_of_todos = [])
    @list_of_todos = list_of_todos
  end

  def add_todo(todo)
    @list_of_todos.push(todo)
  end

  def total_time
    @list_of_todos.reduce(0) do | sum, todo |
      sum + todo.time
    end
  end
end
