class Booking < ApplicationRecord

	# every booking has a pick and drop off detail
	has_many :delivery_details
	accepts_nested_attributes_for :delivery_details

	#every booking has one tracking detail
	has_one :tracking_detail 
	accepts_nested_attributes_for :tracking_detail 

	#each booking must be associated to a user
	belongs_to :user

end
