class TasksController < ApplicationController
    #frequent practice for the order of CRUD actions is
    #index, show, new, edit, create, update, destroy
    def index
        @tasks = Task.all
    end
    
    def show
        @task = Task.find(params[:id])
    end
    
    def new
    end
    
    def create 
        #creates a new task with specified parameters (requirements defined in task_params)
        #capitalized Task refers to the class Task as defined in models
        @task = Task.new(task_params)
        #saves to database
        @task.save
        #redirects (temporarily) to show created task
        redirect_to @task
    end
    
    #parameters required to create a new task
    private
        def task_params
            params.require(:task).permit(:taskName, :assignedTo, :dueDate, :collateral, :frequency, :user_id)
        end
end
