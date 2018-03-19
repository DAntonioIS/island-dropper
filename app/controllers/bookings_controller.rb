class BookingsController < ApplicationController
  
  #user must be logged in before seeing this page
  before_action :authenticate_user!

  def show
		#pass all model bookings for this user
  end

  def new
  	#send a new delivery booking
  	
  end

  def create

  	#take data from form and process
  	
  end

  def checkout

    #take data from form, get quote 

    #loads checkoutpage with data
    
  end


  private
      #validate params individually
     def article_params

      params.require(:booking).permit(:title, :text)
  
    end


end
