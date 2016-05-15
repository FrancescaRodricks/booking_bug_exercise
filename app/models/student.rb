class Student < ActiveRecord::Base
	has_many :teachers , through: :classrooms
  has_many :classrooms
end
