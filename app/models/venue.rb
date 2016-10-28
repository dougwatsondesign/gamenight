class Venue < ApplicationRecord
	has many :events

	validates :name, presence: true
	validates :address, presence: true
	validates :website, presence: true
	validates :venues_type, presence: true
	validates :phone, presence: true
	
end
