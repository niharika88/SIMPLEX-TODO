class TaskController < ApplicationController
	def index
        @tasks = Task.where(status: :to_be_done)
        @doing = Task.where(status: :doing)
        @done = Task.where(status: :done)
    end

    def new 
        @task = Task.new

    end

    def create
        debugger
        @task = Task.new(task_params)
        debugger
        if @task.save
            redirect_to task_path, :notice => "Your to do item was created!"
        else
            render "new"
        end
    end

    def update
        @task = Task.find(params[:id])

        if @task.update_attribute(:status, :done)
            redirect_to task_path, :notice => "Your to do item was marked as done!"
        else
            redirect_to task_path, :notice => "Your to do item was unable to be marked as done!"
        end
    end

    def show
        @task = Task.find(params[:id])
    end

    def destroy
        @task = Task.find(params[:id])
        @task.destroy

        redirect_to task_path, :notice => "Your to do item was deleted!"
    end
    
    def task_params 
        debugger
        params.require(:task).permit(:title, :description, :tags, :duedate, :status)
    end
end
