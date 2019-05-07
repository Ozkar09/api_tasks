class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def index
    @products = ProductService.all
  end

end
