class LoginController < ApplicationController
  include LoginHelper
  
  layout "login_layout"
  def new
  end

  def create
  	user = User.find_by(email: params[:login][:email].downcase, password: params[:login][:password])
  	if user
  		log_in user
  		redirect_to :principal
  	else
  		flash[:danger] = "Credenciales no validas."
  		render :new
  	end
  end

  def destroy
  	log_out if logged_in?
  	redirect_to :root
  end
end
