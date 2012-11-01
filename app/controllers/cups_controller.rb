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

end
