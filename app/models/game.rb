class Game < ApplicationRecord
	

	validates :title, presence: true
	validates :games_type, presence: true
	validates :category, presence: true
	validates :weight, presence: true
	validates :age, presence: true
	validates :players, presence: true
	validates :table_size, presence: true
end
