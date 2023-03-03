class SessionController < ApplicationController

  def new
    # @session = Sesssion.new
  end

  def create
    user = User.find_by name: params[:session][:name].downcase
    if user && user.authenticate(params[:session][:password])
      flash[:success]= "Login Succsess"
      log_in user
      redirect_to user
      else
        flash[:error]= "login failed"
        render :new
    end
  end

  def destroy
    log_out
    flash[:success] = "You are logged out"
    redirect_to login_path
  end

  
end
