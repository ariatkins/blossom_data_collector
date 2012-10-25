class CupsController < ApplicationController

	def show
		@cup = Cup.find(params[:id])
	end

	def create
		
	end

end
