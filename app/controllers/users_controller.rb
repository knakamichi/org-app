class UsersController < ApplicationController
  # before_action :logged_in_user

  def show
    @user = User.find(params[:id])
    # @ownerships = @user.ownerships.paginate(page: params[:page])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # strong parameters => specify which parameters are required and which ones are permitted (prevents the dangers of mass assignment see below)
    if @user.save
      log_in @user
      flash[:success] = "アカウントを作成しました。"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      flash[:danger] = "ログインしてください。"
      redirect_to login_url
    end
  end

  # Confirms the correct user.
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end

  # Confirms an admin user.
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end

#why passing raw params dangerous? => it arranges to pass User.new all data submitted by a user =>
# ex. verifying admin users (added an admin attribute) =>
# The way to set an admin attribute to true is to pass the value admin=’1’ as part of params[:user], a task that is easy to accomplish using a command-line HTTP client such as curl.
# => if all data is passed through, users can easily gain administrative access including admin = '1' in the web request
