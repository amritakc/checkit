class FormsController < ApplicationController

	def index
	end

	def create
		Form.create()
	end

end
