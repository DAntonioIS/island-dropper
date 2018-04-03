class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable,
         :confirmable

         #every user can book many deliveries
         has_many :booking
        # accepts_nested_attributes_for :booking

        #add user to mailing list
  		# before_create :subscribeToMail


private 

	#def subscribeToMail

    #    begin
  			
	#	rescue Gibbon::MailChimpError => e
  			#puts "Houston, we have a problem: #{e.message} - #{e.raw_body}"
	#	end
	
	#end

end #end model
