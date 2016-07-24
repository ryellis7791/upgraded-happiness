class CoursesController < ApplicationController
	before_filter :authenticate_user!
  before_filter do 
    redirect_to :new_user_session_path unless current_user && current_user.admin?
  end
   def index
    @courses = Course.all
  end
 
  def show
    @course = Course.find(params[:id])
  end
 
  def new
    @course = Course.new
  end
 
  def edit
    @course = Course.find(params[:id])
  end
 
  def create
    @course = Course.new(course_params)
 
    if @course.save
      redirect_to @course
    else
      render 'new'
    end
  end
 
  def update
    @course = Course.find(params[:id])
 
    if @course.update(course_params)
      redirect_to @course
    else
      render 'edit'
    end
  end
 
  def destroy
    @course = Course.find(params[:id])
    @article.destroy
 
    redirect_to courses_path
  end
 
  private
    def course_params
      params.require(:course).permit(:name)
    end
end
