class Reto < ActiveRecord::Base
	#asosiaciones
	has_many :logros
	has_many :usuarios , through: :logros
	#validaciones
	validates :descripcion ,presence: true
	validates :nombre ,presence: true
	validates :latitud ,presence: true
	validates :longitud ,presence: true


end
