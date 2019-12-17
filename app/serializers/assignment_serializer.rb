class AssignmentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :category, :deadline, :description, :submitted, :grade, :course
end
