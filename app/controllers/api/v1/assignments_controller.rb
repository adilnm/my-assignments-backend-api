class Api::V1::AssignmentsController < ApplicationController
  def index
    @assignments=Assignment.all
    render json: AssignmentSerializer.new(@assignments), status:200
  end

  def show
    @assignment=Assignment.find(params[:id])

    render json:@assignment, status:200
  end

  def create
    @assignment=Assignment.create(assignmet_params)

    render json:@assignment, status:200
  end

  private
    def assignmet_params
      params.require(:assignment).permit(:name, :category, :description, :grade, :course_id)
    end
end
