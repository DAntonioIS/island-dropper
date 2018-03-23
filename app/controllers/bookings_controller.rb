require 'rubygems'
require 'excon'
require 'multi_json'

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

    #show some kind of spinner to indicate processing

    #take param data from form, 
    @partialbooking=current_user.booking.create(item_description: params[:item_descript], delivery_instructions: params[:delivery_instruct])

    pickUp= @partialbooking.delivery_details.create(delivery_name: params[:pick_name],
    delivery_address: params[:pick_address], delivery_phone_number: params[:pick_phone] )

    dropOff= @partialbooking.delivery_details.create(delivery_name: params[:drop_name],
    delivery_address: params[:drop_address], delivery_phone_number: params[:drop_phone] )
  
    #get swift api key for json builder
    swift_key=Rails.application.secrets.key_getswift_api.to_s

    #create json to be sent, its not at all pretty but will do for now    
    pdetailll=Jbuilder.new do |p|     
        p.address pickUp.delivery_address.to_s
    end
    ddetailll=Jbuilder.new do |d|     
        d.address dropOff.delivery_address.to_s
    end  
    bookkk= Jbuilder.new do |booking|     
        booking.pickupDetail pdetailll
        booking.dropoffDetail ddetailll
    end      
    jsonquote=Jbuilder.new do |quote|
      quote.apiKey swift_key.to_s
      quote.booking bookkk
    end

    #render  plain: jsonquote.target!.to_s

    #create excon connection for server use & get quote
     @connection = Excon.new('https://app.getswift.co',instrumentor: ActiveSupport::Notifications)
     @connection.request(:idempotent => true)
     logger.info "connection sorted" 
     post_response = @connection.post(:path => '/api/v2/quotes', :body => jsonquote.target!.to_s, :headers => { "Content-Type" => "application/json"})
      
      #log request details
      logger.info " Sending API request"
      logger.info " API response "
      logger.info post_response.status 

        if post_response.status == "200"

            #parse the body 
           #post_response.body    

          #update partial booking and pass to view

       end             

    #loads checkoutpage with data
    
  end


  private



      #validate params individually
     def article_params

      params.require(:deliverydetail).permit(:pick_phone, :pick_address, :pick_name)
  
    end

    #method to display 404 page
    def page_not_found

        raise ActionController::RoutingError.new('Not Found')
    end



end #end class
