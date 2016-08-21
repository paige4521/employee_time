class DevelopersController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authorized_user, only: [:edit, :update]
  #before_action :check_for_authorized_user

  def index
   @developer = Developer.find_by(id: session[:user_id])
 end

  def new
    @developer = Developer.new
  end

  def create
    @developer = Developer.new(developer_params)
  end


# TODO: add location for redirection on line 18.
  def update
    @developer = Developer.find(params["id"])
      if @developer.update(developer_params)
        redirect_to
      else
        render  :edit
      end
  end




  private def developer_params
      params.require("devleoper").permit(:name)
    end

end
