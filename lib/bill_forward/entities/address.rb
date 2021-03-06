module BillForward
  class Address < MutableEntity
  	@resource_path = BillForward::ResourcePath.new('addresses', 'address')

  	class << self
	  	def get_by_id(id, query_params = {}, customClient = nil)
	  		raise DenyMethod.new 'Get by ID support is denied for this entity; '+
			 'at the time of writing, no API endpoint exists to support it.'+
			 'The entity can be GETted through cascade only (i.e. GET a related entity).'
	  	end

	  	def get_all(query_params = {}, customClient = nil)
	  		raise DenyMethod.new 'Get All support is denied for this entity; '+
			 'at the time of writing, no API endpoint exists to support it.'+
			 'The entity can be GETted through cascade only (i.e. GET a related entity).'
	  	end
	end

  	def save()
  		raise DenyMethod.new 'Save support is denied for this entity; '+
		 'at the time of writing, the provided API endpoint is not functioning.'+
		 'The entity can be saved through cascade only (i.e. save a related entity).'
  	end
  end
end