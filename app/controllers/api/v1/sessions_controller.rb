class Api::V1::SessionsController < RocketPants::Base#< ApplicationController

#prepend_before_filter :require_no_authentication, :only => [:create ]

  #include Devise::Controllers::InternalHelpers
  
 # before_filter :ensure_params_exist
 
  #respond_to :json
  
  def create
    usuario = Usuario.find_by(email: params[:email])
 
    if usuario && usuario.valid_password?(params[:password])
      usuario.generate_authentication_token
 
      expose({
        usuario_id: usuario.id,
        authentication_token: usuario.authentication_token
      })
    else
      error! :unauthenticated
      #render :json=>{:success=>false, :message=>"missing user_login parameter"}, :status=>422
  #expose({
    #    usuario_id: "nocped"
        
     # })
    end


  end
  
  def destroy
    sign_out(resource_name)
  end
 
 
private
 
  def user_params
    params.require(:usuario).permit(:email, :password)
  end
end
