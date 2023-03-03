class SessionController < ApplicationController

  def new
    @session = Sesssion.new
  end

  def create
    @sesssion = Session.new(session_params)
      if @session.save
        flash[:success]= login successfully"
        redirect_to login_path
      else
        flash[:error]= "login failed"
        render :new
  end

  def destroy

  end
end
