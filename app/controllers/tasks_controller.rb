class TasksController < ApplicationController

  before_action :set_task, only: [:edit, :update, :destroy]
  
  def index
  	@tasks = Task.all
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to root_path
    else
      @tasks = Task.all
      render 'index'
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def cards
    @tasks = Task.find(:all,:order => 'activity_date asc')
  end

  private

    def task_params
      params[:task].permit(:subject, :activity_date)
    end

    def set_task
      @task = Task.find(params[:id])
    end
end
