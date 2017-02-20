module ReceiptsHelper
	def form_title
		@receipt.new_record? ? "Crear Comprobante" : "Modificar Comprobante"
	end
	def header_style
		if @receipt.image.exists?
			%{ style="background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url('#{@receipt.image.url}'); background-size: cover; background-position: center;" }.html_safe
		else
			""
		end
	end
end
