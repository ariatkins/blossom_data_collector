class CupsController < ApplicationController

	def show
		@cup = Cup.find(params[:id])
	end

	def create
		@machine = Machine.find(0)
		data = params[:value].split(',')
		@cup = @machine.new(temperature: data[1], duration: data[3])
		@cup.save
	end

end
