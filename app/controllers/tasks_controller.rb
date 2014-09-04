class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render('tasks/index.html.erb')
  end

  def new
    @task = Task.new(params[:task])
    render ('tasks/new.html.erb')
  end

  def create
    @task = Task.create(params[:task])
    @tasks = Task.all
    render('tasks/index.html.erb')
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(:done => true)
      @tasks = Task.all
      render('tasks/index.html.erb')
    end
  end

  def show
    # @task = Task.find(params[:id])
    @tasks = Task.all
    # @task.update(:done => true)
    render ('tasks/show.html.erb')
  end
end
