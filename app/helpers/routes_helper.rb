module RoutesHelper
	def form_title_route
		@route.new_record? ? "Crear Ruta" : "Modificar Ruta"
	end
	def header_style
		if @route.image.exists?
			%{ style="background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url('#{@route.image.url}'); background-size: cover; background-position: center;" }.html_safe
		else
			""
		end
	end
end
