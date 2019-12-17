class Api::V1::CoursesController < ApplicationController

  def index
    @courses=Course.all

    render json: @courses, status:200
  end

  def create
    @course=Course.create(course_params)

    render json: @course, status:200
  end

  private

  def course_params
    params.require(:course).permit(:name, :professor, :semester)
  end
end
