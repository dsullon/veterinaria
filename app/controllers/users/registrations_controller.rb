class Users::RegistrationsController < Devise::RegistrationsController
 #before_filter :configure_sign_up_params, only: [:create]
 #before_filter :configure_account_update_params, only: [:update]
 layout 'plantilla'
 before_filter :configure_permitted_parameters

  protected
   
    # my custom fields are :name, :heard_how
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) do |u|
        u.permit(:name, :lastName, :address, :phone, :mobilePhone, :email, :password)
      end
      devise_parameter_sanitizer.for(:account_update) do |u|
        u.permit(:name, :lastName, :address, :phone, :mobilePhone, :email, :password, :current_password)
      end
    end

    def build_resource(*args)
      super
      if session[:omniauth]
        @user.apply_omniauth(session[:omniauth])
        @user.valid?
      end
    end

   def create
     super
     session[:omniauth] = nil unless @user.new_record?       
   end
end