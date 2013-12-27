class UsersController < ActionController::Base

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.paginate(:page => params[:page], :per_page => 20)
  end
  
end
