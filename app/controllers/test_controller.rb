class TestController < ApplicationController
	def Index
		puts "Hi Jack"
		render :nothing => true
	end
end