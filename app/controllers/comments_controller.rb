class CommentsController < ApplicationController
	def create
		@comment = Comment.new(params[:comment])
		@comment.save
		@user = @comment.cup.machine.user
		redirect_to @user
	end

end
