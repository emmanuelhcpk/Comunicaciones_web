class Api::V1::BaseController < RocketPants::Base
before_action :authenticate_usuario_from_token
before_action :require_authentication!
 
  def current_usuario
    @current_usuario
  end
 
  def require_authentication!
    error! :unauthenticated if current_usuario.nil?
  end
 
  def authenticate_usuario_from_token
    usuario = authenticate_with_http_token do |token, options|
      usuario_id = options[:usuario_id]
      usuario = usuario_id && Usuario.find_by_id(usuario_id)
 
      if usuario && Devise.secure_compare(usuario.authentication_token, token)
        usuario
      else
        nil
      end
    end
 
    @current_usuario = usuario
  end
end