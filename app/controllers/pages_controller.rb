class PagesController < ApplicationController
	def show
		@url = Url.new
	end
end