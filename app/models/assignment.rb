class Assignment < ApplicationRecord
  belongs_to :course

  validates :name, presence: true
  validates :category, presence: true
end
