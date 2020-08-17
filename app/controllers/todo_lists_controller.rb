class TodoListsController < ApplicationController
  def index
    @todos = TodoList.all
    render json: @todos
  end

  def create
    @todo = TodoList.new(key: params[:key], title: params[:title], isDone: params[:isDone], isImportant: params[:isImportant], subjectIndex: params[:subjectIndex])
    @todo.save
    render json: @todo
  end

  def delete
    @todo = TodoList.find_by(key: params[:key])
    @todo.destroy
    render json: @todo
  end

  def test
    @todos = TodoList.all
    @todo = @todos[params[:id].to_i]
    render json: @todo
  end

  def update
    
  end

  def update_is_imoportant
    @todo = TodoList.find_by(key: params[:key])
    @todo.isImportant = !@todo.isImportant
    @todo.save
    render json: @todo
  end

  def update_is_done
    @todo = TodoList.find_by(key: params[:key])
    @todo.isDone = !@todo.isDone
    @todo.save
    render json: @todo
  end

  def perge
    @todos = TodoList.all
    @todos.each do |todo|
      todo.destroy
    end
    render json: @todos

  end
end
