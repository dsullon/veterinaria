class UsersController < Devise::RegistrationsController
	def new
		super
	end

	def create
		super
	end

	def update
		super
	end

	protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :lastName, :address, :phone, :mobilePhone, :email, :password) }
            devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :lastName, :address, :phone, :mobilePhone, :email, :password, :current_password) }
        end
end
