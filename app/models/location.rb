class Location < ApplicationRecord
	validates :address, presence: true
	validates :city, presence: true
	after_validation :geocode
	geocoded_by :my_location

	def my_location
			"#{address}, #{city} , GA" #hardcoding GA b/c it's all in Georgia (others give you diff options)
	end
end
