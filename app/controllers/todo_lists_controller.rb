class TodoListsController < ApplicationController
  def index
    @todos = TodoList.all
    render json: @todos
  end

  def create
    @todo = TodoList.new(title: params[:title], isDone: params[:isDone], isImportant: params[:isImportant], subjectIndex: params[:subjectIndex])
    @todo.save
    render json: @todo
  end

  def delete
  end

  def update
  end
end
