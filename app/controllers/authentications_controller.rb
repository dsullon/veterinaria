class AuthenticationsController < ApplicationController
  before_action :set_authentication, only: [:show, :edit, :update, :destroy]

  def index
    @authentications = current_user.authentications if current_user
    #respond_with(@authentications)
  end

  def show
    respond_with(@authentication)
  end

  def new
    @authentication = Authentication.new
    respond_with(@authentication)
  end

  def edit
  end

  def create
   omniauth = request.env["omniauth.auth"]
   authentication = Authentication.find_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
   if authentication
    sign_in_and_redirect(:user, authentication.user)
   elsif current_user
    current_user.authentications.create(:provider => omniauth['provider'], :uid => omniauth['uid'])
    flash[:notice] = "Correcto"
    redirect_to authentications_url
  else
    user = User.new
    user.apply_omniauth(omniauth)
    if user.save
      sign_in_and_redirect(:user, authentication.user)
    else
      session[:omniauth] = omniauth.except('extra')
      redirect_to new_user_registration_url
    end
   end
  end

  def update
    @authentication.update(authentication_params)
    respond_with(@authentication)
  end

  def destroy
    @authentication = current_user.authentications.find(params[:id])
    @authentication.destroy
    respond_with(@authentication)
  end

  private
    def set_authentication
      @authentication = Authentication.find(params[:id])
    end

    def authentication_params
      params.require(:authentication).permit(:user_id, :provider, :uid, :index, :create, :destroy)
    end
end
