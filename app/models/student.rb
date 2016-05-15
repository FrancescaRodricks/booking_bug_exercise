class Student < ActiveRecord::Base
  has_many :classrooms
  has_many :teachers , through: :classrooms
  
  
  has_one :school, through: :classroom
  has_one :classroom
end
