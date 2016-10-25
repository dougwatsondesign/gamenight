class Event < ApplicationRecord
	belongs_to :user
	has_many :venues
	has_many :games
end
