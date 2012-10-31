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
		if @cup.update_attributes(params[:cup])
			flash[:success] = "Comments added"
			@user = @cup.machine.user
			redirect_to @user
		else
		end
	end

end
