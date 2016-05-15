class Student < ActiveRecord::Base
	has_many :teachers , through: :classrooms
  has_many :classrooms
	belongs_to :school
end