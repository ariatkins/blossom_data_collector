class CupsController < ApplicationController

	skip_before_filter :verify_authenticity_token

	def show
		@cup = Cup.find(params[:id])
	end

	def create
		@machine = Machine.find(2)
		data = params[:value].split(',')
		@cup = @machine.cups.new(temperature: data[1], duration: data[3])
		@cup.save
	end

	def update
		@cup = Cup.find(params[:id])
		@comment = @cup.comments.new(params[:cup][:comment])
		@comment.save
		redirect_to @cup.machine.user
	end

end
