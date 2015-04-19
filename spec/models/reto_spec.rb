require 'spec_helper'

describe Reto do
  
	it "is invalid without a description" do 

		expect(Reto.new).to have(1).errors_on(:descripcion)
	end

	it "is invalid without a latitud" do
		expect(Reto.new).to have(1).errors_on(:latitud)
	end

	it "is invalid without a longitud" do
		expect(Reto.new).to have(1).errors_on(:longitud)
	end

	it "is invalid withoutn a name" do 
		expect(Reto.new).to have(1).errors_on(:nombre)
	end 

end
