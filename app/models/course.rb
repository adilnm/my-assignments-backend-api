class Course < ApplicationRecord
  has_many :assignments, -> { order('name') }

  validates :name, presence: true
  validates :professor, presence: true
  validates :semester, presence: true
end
