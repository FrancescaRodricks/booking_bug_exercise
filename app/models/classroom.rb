class Classroom < ActiveRecord::Base
	belongs_to :student, dependent: :destroy
	belongs_to :teacher, dependent: :destroy
end
