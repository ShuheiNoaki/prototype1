class MessagesController < ApplicationController
	before_action 

	def create
		@message = Message.new(message_params)
	end

	def new
	end

	def edit
	end

	def show
		@messages = Message.where("farm_id = ? and send_id = ?", 1, params[:id])
	end

	private

	def message_params
		params.require(:message).permit(:content, :farm_id, :send_id)
	end

end
