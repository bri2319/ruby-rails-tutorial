class CoursesController < ApplicationController
  before_action :set_course, only: [ :edit, :update, :destroy, :show ]




  def index
    @courses = Course.all
  end

  def show
    # @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(trip_params)
      if @course.save
        redirect_to @course
      else
        render :new, status: :unprocessable_entity
      end
    end

  def edit
    # @course = Course.find(params[:id])
  end

  def update
    # @course = Course.find(params[:id])
    if @course.update(course_params)
      redirect_to @course
    else
      render :edit, status: :unprocessable_entity
    end
  end

 def destroy
  @course.destroy
  redirect_to root_path
end

private
      def set_course
        @course = Course.find(params[:id])
      end
      def course_params
        params.expect(course: [ :name, :description, :skill ])
      end
end
