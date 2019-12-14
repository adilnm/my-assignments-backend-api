class AssignmentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :category
end
