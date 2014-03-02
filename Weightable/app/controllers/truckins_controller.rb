class TruckinsController < ActionController::Base

  def show
  end

  def new
    @truckin = Truckin.new
    @truckins.users_id = current_user.id
    @truckins.weigh_ins_id = weigh_in.id
    @user = User.find(current_user)
  end

  def create
    @user = User.find(current_user)
   
  end

  private 

    # Never trust parameters from the scary internet, only allow the white list through.
    def truckins_params
      params.require(:truckins).permit(:users_id, :weigh_ins_id)
    end
end