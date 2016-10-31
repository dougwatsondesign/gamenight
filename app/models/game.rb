class Game < ApplicationRecord
	# has_many :events

	# has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:styles/missing.png"
 #  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

	validates :title, presence: true
	validates :games_type, presence: true
	validates :category, presence: true
	validates :weight, presence: true
	validates :age, presence: true
	validates :players, presence: true
	validates :table_size, presence: true
	validates :description, presence: true
end
