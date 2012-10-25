class CupsController < ApplicationController

	def show
		@cup = Cup.find(params[:id])
	end

	def create
		@machine = Machine.find(1)
		@cup = @machine.new(time: "test")
		@cup.save
	end

end
