class FriendshipsController < ApplicationController

  before_filter :authenticate_user!

  def index
    @friends = current_user.friends
    @pending_invited_by = current_user.pending_invited_by
    @pending_invited = current_user.pending_invited
  end

  def create
    @friend = User.find(params[:user_id])
    @friendship_created = current_user.invite(@friend)

    if @friendship_created
      flash[:notice] = "A friendship request was sent to #{@friend.name}"
      redirect_to users_path
    end
  end

  def update
    @friend = User.find(params[:id])
    @friendship_approved = current_user.approve(@friend)
    @friends = current_user.friends
    @pending_invited_by = current_user.pending_invited_by
    flash[:notice] = "Friendship approved"
    redirect_to users_path
  end

  def destroy
    @friend = User.find(params[:id])
    @friendship = current_user.send(:find_any_friendship_with, @friend)
    if @friendship
      @friendship.delete
      @removed = true
      flash[:notice] = "This friendship has been deleted"
      redirect_to users_path
    end
  end

end