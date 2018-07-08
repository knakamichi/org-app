class OwnershipsController < ApplicationController
  def create
    @user = User.find(params[:user_id => current_user.id])
    @user.own(stuff)
    redirect_to @user
  end

  def destroy
    # debugger
    # @ownership = Ownership.find(params[:user_id === current_user.id])
    # current_user.ownership.delete(@ownership)
    # # current_userの画面をreloadせずにview で押された操作をする（cf: Twitterのフォロー・アンフォローボタン）
    # respond_to do |format|
    #   format.html { redirect_to @user }
    #   format.js
    # end
    stuff = Ownership.find(params[:id]).stuff.id
    current_user.disown(stuff)
    redirect_to current_user
  end

end
