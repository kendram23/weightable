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


  def approve
    @friend = User.find(params[:id])
    @friendship_approved = current_user.approve(@friend)
    @friends = current_user.friends
    @pending_invited_by = current_user.pending_invited_by
    flash.now[:notice] = "Friendship approved"
  end

  def remove
    @friend = User.find(params[:id])
    @friendship = current_user.send(:find_any_friendship_with, @friend)
    if @friendship
      @friendship.delete
      @removed = true
      flash.now[:notice] = "This friendship has been deleted"
    end
  end

end