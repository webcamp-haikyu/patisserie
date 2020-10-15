class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
  
	def after_sign_in_path_for(resource)
		case resource
		when Admin
             admins_root_path
		when Customer
             root_path
		end
	end

	def after_sign_out_path_for(resource_or_scope)
	    if resource_or_scope == :admin
	       new_admin_session_path
	    else
	       root_path
	    end
	end

	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :first_name_kana, :last_name_kana, :email, :post_code, :address, :phone_number])
  end
end



