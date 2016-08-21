class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper



 
  # Expose this method to the view
  #helper_method :current_user
  # Memoized for performance only hit DB once
  #def current_user
  #  @current_user ||=User.find(session[:user_id]) if session[:user_id]
#  end

  # Check is a current_user is present otherwise redirect them.
  #def authorized_user
  #  unless current_user
  #    redirect_to login_path, alert: "Not authorized"
  #  end
  #end
end
# alternatively
#def authorize
#  redirect_to '/login' unlsess current_user
