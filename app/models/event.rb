class Event < ApplicationRecord
	belongs_to :user
	# belongs_to :game
	# belongs_to :venue
	has_many :attendings

	def self.search(search)
  		Event.where("game LIKE ?", "%#{search}%")

  	
	end
	
	geocoded_by :address
  	after_validation :geocode

	validates :game, presence: true
	validates :location, presence: true
	validates :variation, presence: true
	validates :teach, presence: true
	validates :snacks, presence: true
	validates :date, presence: true
	validates :time, presence: true

	
end
