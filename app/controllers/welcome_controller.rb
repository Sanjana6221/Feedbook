class WelcomeController < ApplicationController
	
	skip_before_action :authenticate_user!

	def index
		@posts = Post.where(status: "Public") unless current_user
		@posts = Post.all if current_user
	end
end
