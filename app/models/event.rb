class Event < ApplicationRecord
	belongs_to :user
	# belongs_to :game
	# belongs_to :venue
	has_many :attendings
	
	geocoded_by :address
  	after_validation :geocode

	validates :game, presence: true
	validates :location, presence: true
	validates :variation, presence: true
	validates :teach, presence: true
	validates :snacks, presence: true
	validates :date, presence: true
	validates :time, presence: true

	def self.search(search)
  		where("game ILIKE ?", "%#{search}%") 
  		where("location ILIKE ?", "%#{search}%")
  		where("teach ILIKE ?", "%#{search}%") 
  		where("snacks ILIKE ?", "%#{search}%")
  		where("date ILIKE ?", "%#{search}%") 
  		where("time ILIKE ?", "%#{search}%")
  		where("address ILIKE ?", "%#{search}%") 
	end
end
