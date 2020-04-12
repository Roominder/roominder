class TasksController < ApplicationController
    #frequent practice for the order of CRUD actions is
    #index, show, new, edit, create, update, destroy
    def index
        @room = Room.find(params[:room_id])
        @users = @room.secure_users
        @tasks = Task.where(secure_user_id: @users)
    end
    
    def show
        @task = Task.find(params[:id])
    end
    
    def new
    end
    
    def create 
        #creates a new task with specified parameters (requirements defined in task_params)
        #capitalized Task refers to the class Task as defined in models
        @user = User.find(params[:secure_user_id])
        @task = @user.tasks.create(task_params)
        #saves to database
        @task.save
        redirect_to room_user_tasks_url
    end
    
    #parameters required to create a new task
    private
        def task_params
            params.require(:task).permit(:taskName, :assignedTo, :dueDate, :collateral, :frequency, :user_id)
        end
end
