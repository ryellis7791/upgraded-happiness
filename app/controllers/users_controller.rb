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
	params.require(:user).permit(:course_one,:course_two,:course_three,:course_four,:course_five)
	end
end
