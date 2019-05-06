class Api::V1::TasksController < ApplicationController

  def index
    @tasks = Task.all
    render json: @tasks.as_json
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      @task.as_json
    else
      render json: {errors: @task.errors}
    end
  end

  def show
    @task = Task.find(params[:id])
    render json: @task
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy()
  end

  private
  def task_params
      params.require(:task).permit(:done, :description)
  end

end
