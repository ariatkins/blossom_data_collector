class PoweronsController < ApplicationController

	def create
		data = params[:value].split(',')
		@machine = Machine.find_by_imp_id(data[0])
		@poweron = @machine.powerons.new(time: data[1])
		@poweron.save
		render :text=>"ok"
	end
end
