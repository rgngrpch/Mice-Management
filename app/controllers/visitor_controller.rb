class  VisitorController < ApplicationController
	def index
		@cages = Cage.all
	end
end