class School < ActiveRecord::Base
  has_many :classrooms
  has_many :teachers, through: :classrooms
  has_many :students, through: :classrooms
end