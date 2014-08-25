class TodosController < ApplicationController
  before_action :authenticate_user!
  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save!
      redirect_to todo_index_path, notice: "Item added"
    else
      render :new
    end
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def index
    @todo = Todo.where(user_id: current_user)
  end
  #
  # private

    # def todo_params
    #   params.require(:todo, :title, :description, :completed).permit(:due_date)
    # end
end
