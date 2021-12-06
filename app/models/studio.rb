class Studio < ApplicationRecord
	belongs_to :user
	has_one :feature
	has_one :studio_rule
	has_one :location
	has_one :price
	has_many :photos
end
