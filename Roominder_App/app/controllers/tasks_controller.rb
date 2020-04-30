class TasksController < ApplicationController
    #frequent practice for the order of CRUD actions is
    #index, show, new, edit, create, update, destroy
    def index
        # finds and displays all tasks in user's room (user's and user's roommates' tasks)
        @room = Room.find(params[:room_id])
        @users = @room.secure_users
        @tasks = Task.where(secure_user_id: @users)
    end
    
    def show
        @task = Task.find(params[:id])
    end
    
    def new
    end
   
    def destroy
        @task = Task.find(params[:id])
        @task.destroy

        redirect_to room_secure_user_tasks_url
    end

    def create 
        #creates a new task with specified parameters (requirements defined in task_params)
        #capitalized Task refers to the class Task as defined in models
        @user = SecureUser.find(params[:secure_user_id])
        @task = @user.tasks.create(task_params)
        #saves to database
        @task.save
        redirect_to room_secure_user_tasks_url
    end
    
    #parameters required to create a new task
    private
        def task_params
            params.require(:task).permit(:taskName, :assignedTo, :dueDate, :collateral, :frequency, :secure_user_id)
        end
end
