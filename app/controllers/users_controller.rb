class UsersController < ActionController::Base
before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index

  end


  def new
    @user = User.new
  end


  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to developers_path

    else
      render 'new'
       
    end
  end

  private

  def set_user
        @user = User.find(params[:id])
      end



    def user_params
      params.require("user").permit(:name, :email, :password, :password_confirmation)
    end
end
