class Api::V1::UsuariosController < Api::V1::BaseController
skip_before_action :require_authentication!

def update#Put verbo http
	usuario = Usuario.find(params[:id])
	usuario.update(total_matados:params[:matados],muertes: params[:muertes])
	 #current_usuario.update();
	
end


end
