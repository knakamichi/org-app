class OwnershipsController < ApplicationController
  def create
    user = User.find(params[:owner_id])
    current_user.own(stuff)
    redirect_to user
  end

  def destroy
    user = Ownership.find(params[:owner_id])
    current_user.disown(stuff)
    redirect_to user
  end

end
