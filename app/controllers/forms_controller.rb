class FormsController < ApplicationController

	def index
	end

	def create
		Form.create(gender: params[:gender], age:params[:age], contact_point:params[:contact_point], previous_meeting:params[:previous_meeting], responder_name:params[:responder_name])
		redirect_to ('/homepage')
	end

end
