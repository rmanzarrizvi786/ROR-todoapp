class TodosController < ApplicationController
	def index
		@todo = Todo.all
	end
	def new
		@todo = Todo.new
	end

	def create
		@todo = Todo.new(todo_params)
		if @todo.save
			flash[:notice] = "Todo was created successfully"
			redirect_to todo_path(@todo)
		else
			render 'new'
		end
	end

	def show
		@todo = Todo.find(params[:id])
	end

	def edit
		@todo = Todo.find(params[:id])
	end

	def update
		@todo = Todo.find(params[:id])
		if @todo.update(todo_params)
			flash[:notie] = "Todo was successfully updated"
			redirect_to todo_path(@todo)
		else
			render 'edit'
		end

	end

	def destroy
		@todo = Todo.find(params[:id])
		@todo.destroy
		flash[:notic] = "Todo was deleted successfully"
		redirect_to todos_path
	end

	private

	# whitelisitng what we allow
	# our application to receieve from 
	#web
	def todo_params
		params.require(:todo).permit(:name, :description)
	end
end