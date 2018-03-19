class DeliveryDetail < ApplicationRecord

	belongs_to :booking

	#validate phone numbers
	validates :delivery_phone_number, format: { with: 0-9,
    message: "only numbers allowed" }
	
end
