class HomeController < ApplicationController
	def index
		if user_signed_in?
			redirect_to categories_path
		end
	end
	
	def blogger
	end
	def demo
	end

	def progress
	end
	def scrolspy
	end
	def social
	end
	
end
