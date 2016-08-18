class SessionsController < ActionController::Base

  def new
  end

  def create
    user = User.find_by_email(params[:email])
  end

  def destroy

  end
end

#https://gist.github.com/thebucknerlife/10090014
