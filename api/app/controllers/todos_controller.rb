class TodosController < ApplicationController
  before_action :set_headers

  def index
    @todos = Todo.all
    render json: @todos
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    # JSON.parse(@todo)
    render plain: params[:todo].inspect
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def set_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  end

  private

  def todo_params
    params.permit(:text)
  end
end
