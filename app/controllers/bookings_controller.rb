
#require 'multi_json'
#require 'rubygems'
require 'excon'

class BookingsController < ApplicationController
  
  #user must be logged in before seeing this page
  before_action :authenticate_user!

  def show
		#pass all model bookings for this user
  end

  def new
	
  end

  def create
  	#process payment and save booking in db
  	
  end

  def checkout

    #take param data from form, 
    @partialbooking=current_user.booking.create(item_description: params[:item_descript], delivery_instructions: params[:delivery_instruct])

    pickUp= @partialbooking.delivery_details.create(delivery_name: params[:pick_name],
    delivery_address: params[:pick_address], delivery_phone_number: params[:pick_phone] )

    dropOff= @partialbooking.delivery_details.create(delivery_name: params[:drop_name],
    delivery_address: params[:drop_address], delivery_phone_number: params[:drop_phone] )

    #create json body using form params
          json.set! :apiKey, Rails.application.secrets.key_getswift_api.to_s
          json.set! :booking do
              json.set! :pickupDetail do
                 json.set! :address, pickUp.delivery_address.to_s
              end

              json.set! :dropoffDetail do
                   json.set! :address, dropOff.delivery_address.to_s
              end
          end

    #get quote from getswift server via JSON

      if json

        #render plain for test
        render plain: json

      #response=Excon.post('https://app.getswift.co/api/v2/quotes',
      #:body => json,
      #:headers => { "Content-Type" => "application/json" })

       #   if response.status  

            #read json from response
       #     begin
        #        @partialresponse= MultiJson.load(response.body)
       #     rescue MultiJson::ParseError => exception
       #         exception.data 
        #        exception.cause 
        #    end
            
        #  end #end inner if

      #else

          #load some error page

                     
      end #outer if

    #update partial booking and pass to view


    #loads checkoutpage with data
    
  end


  private
      #validate params individually
     def article_params

      params.require(:deliverydetail).permit(:pick_phone, :pick_address, :pick_name)
  
    end


end
