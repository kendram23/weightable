class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  
def show
    @user = User.find(params[:id])
end


def index
	@users = User.paginate(:page => params[:page], :per_page => 20)
end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
  
end
