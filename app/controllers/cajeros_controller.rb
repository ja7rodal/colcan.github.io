class CajerosController < ApplicationController
	before_action :authenticate_user!
	
	def index
		@mensajeros = User.last(3)
	end

	def show
		@mensajero = User.find(params[:id])
	end
	
#	def new
#		@cajero = Cajero.new
#	end
#
#	def create
#		@cajero = Cajero.create(cajero_params)
#		if @cajero.save
#			redirect_to cajeros_path, notice: "Cajero successfully published"
#		else
#			render :new
#		end
#	end
#
#	def edit
#		@cajero = Cajero.find(params[:id])
#	end
#
#	def update
#		@cajero = Cajero.find(params[:id])
#		if @cajero.update(cajero_params)
#			redirect_to cajeros_path, notice: "Current Cajero"
#		else
#			render :edit
#		end
#	end
#
#	def destroy
#		cajero = Cajero.find(params[:id])
#		cajero.destroy
#
#		redirect_to cajeros_path, notice: "Cajero delete successfully"
#	end

	private
	def cajero_params
		params.require(:cajero).permit(:name, :address, :email, :phone )
	end
end
