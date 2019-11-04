module Paramable
	
  attr_accessor :name
	def to_param
    	self.name.downcase.gsub(' ', '-')
  	end
end