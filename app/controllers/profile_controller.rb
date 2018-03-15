class ProfileController < ApplicationController
  
	#user must be logged in before seeing this page
  before_action :authenticate_user!

  def index

  	#access the model for previous deliveries, pass it to the index view

  end

end
