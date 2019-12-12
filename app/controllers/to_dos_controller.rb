class ToDosController < ApplicationController
  belongs_to :course
  has_many :notes
end
