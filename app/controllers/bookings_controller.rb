class BookingsController < ApplicationController
  
  #user must be logged in before seeing this page
  before_action :authenticate_user!

  def show
  		#create new booking object for current user
  		@booking=Booking.new

		#also pass all the bookings for this user

  end


end
