class RoutesController < ApplicationController
		before_action :authenticate_user!
	
	def index
		@routes = Route.all
	end
	
	def show
		@route = Route.find(params[:id])
	end
	

	def new
		@route = Route.new
	end

	def create
		@route = Route.create(route_params)
		if @route.save
			redirect_to routes_path, notice: "Route successfully published"
		else
			render :new
		end
	end

	def edit
		@route = Route.find(params[:id])
	end

	def update
		@route = Route.find(params[:id])
		if @route.update(route_params)
			redirect_to routes_path, notice: "Current Route"
		else
			render :edit
		end
	end

	def destroy
		route = Route.find(params[:id])
		route.destroy

		redirect_to routes_path, notice: "Route delete successfully"
	end

	private
	def route_params
		params.require(:route).permit(:ruta)
	end
end
