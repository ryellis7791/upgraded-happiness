class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])

	end

	def update
		@user = current_user
		@user.update(user_params)
		render 'show'
	end

	private
	
	def user_params
	params.require(:user).permit(courses_attributes: [:name, :id, :_destroy])
	end
end
