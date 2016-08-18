class UsersController < ActionController::Base

  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/sign_up'
  end
end


private

  def user_params
    params.require(:users).permit(:name, :email, :password, :password_confirmation)
  end
end