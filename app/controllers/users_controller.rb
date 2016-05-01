class UsersController < ApplicationController

		def create
	  		@user = User.find_by(email: params[:email])

	  		if @user && @user.authenticate(params[:password])
	      		session[:user_id] = @user.id
	      		redirect_to '/homepage'
	  			# redirect_to '/homepage/%d' % @user.id
	  		else
	  			flash[:loginmistakes] = ["Invalid Login"]
	  			redirect_to "/" 
  		end
  	end


end
