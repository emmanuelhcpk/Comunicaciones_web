class Api::V1::LogrosController < Api::V1::BaseController
 
def index
	expose Reto.all	
end

end
