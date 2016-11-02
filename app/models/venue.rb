class Venue < ApplicationRecord
	# has_many :events
	geocoded_by :address
  	after_validation :geocode

	validates :name, presence: true
	validates :address, presence: true
	validates :website, presence: true
	validates :venues_type, presence: true
	validates :phone, presence: true
	
end
