class Teacher < ActiveRecord::Base
	has_many :students , through: :classrooms
	has_many :classrooms
	has_many :schools, through: :classrooms
	belongs_to :head_of_department , class_name: 'Teacher'
	has_many :t_assistants , class_name: 'Teacher', foreign_key: 'head_of_department_id'
end
