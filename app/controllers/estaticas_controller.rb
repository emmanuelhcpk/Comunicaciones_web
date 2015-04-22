class EstaticasController < ApplicationController
	def inicio#pagina de inicio root
		@usuarios= Usuario.all
	end
end
