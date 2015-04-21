class Api::V1::SessionsController < Api::V1::BaseController#< ApplicationController

#prepend_before_filter :require_no_authentication, :only => [:create ]

  #include Devise::Controllers::InternalHelpers
  
 # before_filter :ensure_params_exist
 
  #respond_to :json
 skip_before_action :require_authentication!
  
  def create
    usuario = Usuario.find_by(email: params[:email])
 
    if usuario && usuario.valid_password?(params[:password])
      usuario.generate_authentication_token
 
     # expose({
     #   usuario_id: usuario.id,
       # authentication_token: usuario.authentication_token
     # })
expose (usuario)
    else
      error! :unauthenticated
      #render :json=>{:success=>false, :message=>"missing user_login parameter"}, :status=>422
  #expose({
    #    usuario_id: "nocped"
        
     # })
    end


  end
  
  def cerrar_sesion()

  end


  def destroy
    #sign_out(resource_name)
  end
 
 
private
 
  def user_params
    params.require(:usuario).permit(:email, :password)
  end
end
