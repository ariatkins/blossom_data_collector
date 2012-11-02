class CupsController < ApplicationController

	skip_before_filter :verify_authenticity_token

	def show
		@cup = Cup.find(params[:id])
	end

	def create
		data = params[:value].split(',')
		@machine = Machine.find_by_imp_id(data[0])
		@cup = @machine.cups.new(temperature: data[2], duration: data[4])
		@cup.save
		render :text=>"ok"
	end

	def poll
		@cup = Cup.first
		if @cup.created_at > 3.seconds.ago
			render @cup

		else
			render :nothing => true
		end
	end

	def update
		@cup = Cup.find(params[:id])
		@comment = @cup.comments.new(params[:cup][:comment])
		@comment.save
		redirect_to @cup.machine.user
	end
end
