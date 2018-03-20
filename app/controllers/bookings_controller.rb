class BookingsController < ApplicationController
  
  #user must be logged in before seeing this page
  before_action :authenticate_user!

  def show
		#pass all model bookings for this user
  end

  def new
  
  	
  end

  def create

  	#take data from form and process
  	
  end

  def checkout

    #take param data from form, 
    @partialbooking=current_user.booking.create(item_description: params[:item_descript], delivery_instructions: params[:delivery_instruct])

    pickUp= @partialbooking.delivery_details.create(delivery_name: params[:pick_name],
    delivery_address: params[:pick_address], delivery_phone_number: params[:pick_phone] )

    dropOff= @partialbooking.delivery_details.create(delivery_name: params[:drop_name],
    delivery_address: params[:drop_address], delivery_phone_number: params[:drop_phone] )

    #get quote from getswift server via JSON


    #update partial booking and pass


    #loads checkoutpage with data
    
  end


  private
      #validate params individually
     def article_params

      params.require(:deliverydetail).permit(:pick_phone, :pick_address, :pick_name)
  
    end


end
