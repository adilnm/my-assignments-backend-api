class Api::V1::CoursesController < ApplicationController

  def index
    @courses=Course.all

    render json: CourseSerializer.new(@courses), status:200
  end

  def show
    @course=Course.find(params[:id])
    render json: @course, status:200
  end

  def create
    @course=Course.create(course_params)

    render json: @course, status:200
  end

  def update
    @course=Course.find(params[:id])
    @course.update(course_params)

    render json:@course, status:200
  end

  def destroy
    @course=Course.find(params[:id])
    @course.delete

    render json:{courseId: @course.id}, status:200
  end

  private

  def course_params
    params.require(:course).permit(:name, :professor, :semester)
  end
end
