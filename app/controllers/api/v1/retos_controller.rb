class Api::V1::RetosController < Api::V1::BaseController
#skip_before_action :require_authentication!
def index
	expose Reto.all	
end

end
