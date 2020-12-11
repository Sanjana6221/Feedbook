class WelcomeController < ApplicationController
	
	skip_before_action :authenticate_user!

	def index
		@posts = Post.where(status: "Public")
	end
end