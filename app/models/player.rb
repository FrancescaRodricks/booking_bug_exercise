class Player < ActiveRecord::Base
	belongs_to :team
	validates :name, :goals, :team_id, presence: true
	validates :name, length: { maximum: 12 }
	scope :max_goals,  -> { where("goals > ?", 10) }
end
