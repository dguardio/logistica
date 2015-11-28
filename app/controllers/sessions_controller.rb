class SessionsController < ApplicationController
  def new
  end

  def create
  	begin
  		@user = User.from_omniauth(request.env['omniauth.auth'])
  		session[:user_id] = @user.user_id
  		flash[:success] = "Welcome, #{@user.name}!"
  	rescue
  		flash[:warning] = "There was an error whiole trying to plug you in ......."
  	end 
  	redirect_to root_path
  	#render text: request.env['omniauth.auth'].to_yaml
  end

  def destroy
	  if current_user
	    session.delete(:user_id)
	    flash[:success] = 'See you!'
	  end
	  redirect_to root_path
	end
end
