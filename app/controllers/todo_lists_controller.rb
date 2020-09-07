class TodoListsController < ApplicationController
  def index
    @todos = TodoList.all
    render json: @todos
  end

  def create
    @todo = TodoList.new(key: params[:key], title: params[:title], isDone: params[:isDone], isImportant: params[:isImportant], subjectIndex: params[:subjectIndex], subjectKey: params[:subjectKey])
    @todo.save
    render json: @todo
  end

  def delete
    @todo = TodoList.find_by(key: params[:key])
    @todo.destroy
    render json: @todo
  end

  def delete_subject
    @todos = TodoList.where(subjectKey: params[:subjectKey])
    # @todos = TodoList.where(subjectIndex: params[:subjectIndex].to_i)
    @todos.each do |todo|
      todo.destroy
    end
    # render json: {status: "success"} if @todos == []
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
    # render json: {status: "success"} if @todos == []
  end
end
