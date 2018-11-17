class Articulo 
	include ActiveModel::Model
	attr_accessor :id, :nombre, :precio, :cantidad, :created_at, :updated_at
end
