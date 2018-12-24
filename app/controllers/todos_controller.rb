class TodosController < ApplicationController
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

	private

	# whitelisitng what we allow
	# our application to receieve from 
	#web
	def todo_params
		params.require(:todo).permit(:name, :description)
	end
end