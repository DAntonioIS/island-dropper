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


end
