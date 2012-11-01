class PoweronsController < ApplicationController

	def create
		data = params[:value].split(',')
		@machine = Machine.find_by_imp_id(data[0])
		@cup = @machine.cups.new(time: data[1])
		@cup.save
		render :text=>"ok"
	end
end
