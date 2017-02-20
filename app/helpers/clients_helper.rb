module ClientsHelper
	def form_title
		@client.new_record? ? "Crear Cliente" : "Modificar Cliente"
	end
	def header_style
		if @client.image.exists?
			%{ style="background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url('#{@client.image.url}'); background-size: cover; background-position: center;" }.html_safe
		else
			""
		end
	end
end
