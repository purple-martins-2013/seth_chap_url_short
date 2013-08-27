class UrlsController < ApplicationController
	def create
		p params
		@url = Url.new
		@url.long_url = params[:url][:long_url]

		if @url.valid? == false 
			render 'pages/show' and return
		else
			short_url = ''
			6.times do 
				short_url << ('A'..'Z').to_a.sample
			end
			@url.short_url = short_url
			@url.save
		end
	end
end