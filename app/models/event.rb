class Event < ApplicationRecord
	belongs_to :user
	

	validates :game, presence: true
	validates :location, presence: true
	validates :variation, presence: true
	validates :teach, presence: true
	validates :snacks, presence: true
	validates :date, presence: true
	validates :time, presence: true
end
