class RetosController < ApplicationController
	def new
		@reto = Reto.new
	end

	def create
		@reto.new(retos_params)
		if @reto.valid?
			@reto.save
			redirect_to @reto
		else
			render :action => 'new'
		end
	end

	def show
		@reto = Reto.find(params[:id])
	end
	private

	def retos_params
		 params.required(:reto).permit(:nombre
     ,:descripcion
     , :latitud
      ,:longitud)
	end
end
