class UsersController < ApplicationController
  before_action :require_correct_user, only: [:show_signs, :show_trust]

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

      def index
        @data = { lightLevel: 25.2, rawValue: 651, id: 1, address: "1980 Zanker Road, CA" }
        render :json => @data
      end

  		def show_signs
  		end

  		def show_trust
  		end

  		def destroy
    		logout_user
    		redirect_to '/'
    	end

end
