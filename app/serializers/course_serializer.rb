class CourseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :professor, :semester, :assignments
end
