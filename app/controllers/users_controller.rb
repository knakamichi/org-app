class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @stuffs = @user.stuffs.paginate(page: params[:page])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # strong parameters => specify which parameters are required and which ones are permitted (prevents the dangers of mass assignment see below)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end

#why passing raw params dangerous? => it arranges to pass User.new all data submitted by a user =>
# ex. verifying admin users (added an admin attribute) =>
# The way to set an admin attribute to true is to pass the value admin=’1’ as part of params[:user], a task that is easy to accomplish using a command-line HTTP client such as curl.
# => if all data is passed through, users can easily gain administrative access including admin = '1' in the web request
