class CupsController < ApplicationController

	skip_before_filter :verify_authenticity_token

	def show
		@cup = Cup.find(params[:id])
	end

	def create
		data = params[:value].split(',')
		@machine = Machine.find_by_imp_id(data[0])
		@cup = @machine.cups.new(temperature: data[2], size: data[3], duration: data[4])
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
		if params[:cup][:comment]
			@comment = @cup.comments.new(params[:cup][:comment])
			if @comment.save
			end
		else
			if @cup.update_attributes(params[:cup])
				@cup.save
			end
		end
		redirect_to @cup.machine.user
	end
end
