class Api::V1::AssignmentsController < ApplicationController
  def index
    @assignments=Assignment.order(:name)
    
    render json: AssignmentSerializer.new(@assignments), status:200
  end

  def show
    @assignment=Assignment.find(params[:id])

    render json:@assignment, status:200
  end

  def create
    @assignment=Assignment.create(assignmet_params)
    if @assignment.save
      render json:@assignment, status:200

    else
      render json:@assignment.errors.messages, status:401

    end
  end

  def update
    @assignment=Assignment.find(params[:id])
    @assignment.update(assignmet_params)

    render json:@assignment, status:200
  end

  def destroy
    @assignment=Assignment.find(params[:id])
    @assignment.delete

    render json:{AssignmentId: @assignment.id}, status:200
  end

  private
    def assignmet_params
      params.require(:assignment).permit(:name, :category, :description, :grade, :course_id, :deadline, :submitted)
    end
end
