class Team < ActiveRecord::Base
	has_many :players , dependent: :destroy
	validates :name, presence: true
	validates :name, length: { maximum: 12 }
end
