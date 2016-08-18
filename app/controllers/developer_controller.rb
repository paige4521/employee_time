class DeveloperController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  #before_action :check_for_authorized_user



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
