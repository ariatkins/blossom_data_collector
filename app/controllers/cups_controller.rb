class CupsController < ApplicationController

	def show
		@cup = Cup.find(params[:id])
	end

	def create
		@machine = Machine.first
		data = params[:value].split(',')
		@cup = @machine.cups.new(temperature: data[1], duration: data[3])
		@cup.save
	end

end
