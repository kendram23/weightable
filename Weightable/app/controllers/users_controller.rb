class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def show
      @user = User.find(params[:id])
  end

  def index
  	@users = User.paginate(:page => params[:page], :per_page => 20)
  end

  def edit
    @users = User.find(params[:id])

  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :about, :start_weight, :goal_weight, :user_image)
    end

    # Check that user is logged in
    # Prompt sign_in if not
    def authenticate
      deny_access unless signed_in?
    end

end
