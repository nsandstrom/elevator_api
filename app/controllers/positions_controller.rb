class PositionsController < ApplicationController	
  skip_before_action :verify_authenticity_token, only: [:create]
	def index
		@positions = Position.all
	end

	def create
		position = Position.new(elevator_id: params[:elevator], floor: params[:floor], timestamp: Time.now)
		if position.save
			render status: 202, text: "Ok\n"
		else
			head 400
		end
	end

	private
	def position_params
      params.require(:position).permit(:elevator_id, :floor)
    end
end
