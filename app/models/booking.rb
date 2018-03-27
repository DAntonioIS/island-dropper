class Booking < ApplicationRecord

	# every booking has a pick and drop off detail
	has_many :delivery_details
	accepts_nested_attributes_for :delivery_details

	#every booking has one tracking detail
	has_one :tracking_detail 
	accepts_nested_attributes_for :tracking_detail 

	#payment ref
	has_one :payment_detail
	accepts_nested_attributes_for :payment_detail 

	#each booking must be associated to a user
	belongs_to :user


	#return pickup address
    def is_pickUp(book)
    	
    	#get the pickup address for this booking
    	address=DeliveryDetail.new
    	address.find_by(booking_id: book, the_pickup: true)
  

    end

end
