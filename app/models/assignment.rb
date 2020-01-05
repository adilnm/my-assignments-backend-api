class Assignment < ApplicationRecord
  belongs_to :course
  has_many :notes

  validates :name, presence: true
  validates :category, presence: true
end
