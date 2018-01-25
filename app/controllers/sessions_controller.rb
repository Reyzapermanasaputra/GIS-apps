class SessionsController < ApplicationController
	def new
	end

	def create
		username = params[:username]
    password = params[:password]
    user = User.where("username =? and password =?", username, password).first
    if user.nil?
  	  params[:username]
      flash[:error] = "Data anda tidak valid"
      render "new"
    elsif user.password == password && user.username == username
        session[:user] = user.id
        flash[:notice] = "Selamat Datang #{user.username}"
        redirect_to events_path
    end
	end

	def destroy
    session[:user] = nil
    flash[:notice] = "Logout Sukses"
    redirect_to root_url
	end

end
