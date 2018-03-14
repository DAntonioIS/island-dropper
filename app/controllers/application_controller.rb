class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  before_action :configure_permitted_parameters, if: :devise_controller?

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :business_name, :contact_number, :email, :password ])
            devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :business_name, :contact_number, :email, :password, :current_password ])
        end

        # set page for sign in
        def after_sign_in_path_for(resource)

      		profile_index_path
    	end

    	#set page for sign out go to home page
    	def after_sign_out_path_for(resource_or_scope)

  			root_path

		end
end

 #devise_parameter_sanitizer.permit(:sign_up, keys: [:username])