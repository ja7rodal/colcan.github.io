class ReceiptsController < ApplicationController
		
	before_action :authenticate_user!
	
	def index
		@receipts = Receipt.take(60)
	end

	def new
		@receipt = Receipt.new
	end

	def create
		@receipt = Receipt.create(receipt_params)
		if @receipt.save
			redirect_to receipts_path, notice: "Receipt successfully published"
		else
			render :new
		end
	end

	def edit
		@receipt = Receipt.find(params[:id])
	end

	def update
		@receipt = Receipt.find(params[:id])
		if @receipt.update(receipt_params)
			redirect_to receipts_path, notice: "Current Receipt"
		else
			render :edit
		end
	end

	def destroy
		receipt = Receipt.find(params[:id])
		receipt.destroy

		redirect_to receipts_path, notice: "Receipt delete successfully"
	end

	private
	def receipt_params
		params.require(:receipt).permit(:amount, :temperature)
	end
end
