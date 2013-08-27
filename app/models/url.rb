class Url < ActiveRecord::Base
	validates_format_of :long_url, :with => /https?:\/\/[\w]*.?[\w]+.[\w]{2,4}/i,

	# validates :long_url, format: { with: /https?:\/\/[\w]*.?[\w]+.[\w]{2,4}/i }
	:message => "Invalid Url"
end