class ProfileController < ApplicationController
  
	#user must be logged in before seeing this page
  before_action :authenticate_user!

  def index

  	#pass current user to view
  	@tuser=current_user

  	#access the model for previous deliveries, pass it to the index view

  end


  def create
  	
  end

end
