class ProfileController < ApplicationController
  
	#user must be logged in before seeing this page
  before_action :authenticate_user!

  def index

  end

end
