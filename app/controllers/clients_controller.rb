class ClientsController < ApplicationController
	
	before_action :authenticate_user!
	
	def index
		@clients = Client.take(60)
	end

	def show
		@client = Client.find(params[:id])
	end
	
	def new
		@client = Client.new
	end

	def create
		@client = Client.create(client_params)
		if @client.save
			redirect_to clients_path, notice: "Client successfully published"
		else
			render :new
		end
	end

	def edit
		@client = Client.find(params[:id])
	end

	def update
		@client = Client.find(params[:id])
		if @client.update(client_params)
			redirect_to clients_path, notice: "Current Client"
		else
			render :edit
		end
	end

	def destroy
		client = Client.find(params[:id])
		client.destroy

		redirect_to clients_path, notice: "Client delete successfully"
	end

	private
	def client_params
		params.require(:client).permit(:name, :address, :email, :phone, :route_id )
	end

end
