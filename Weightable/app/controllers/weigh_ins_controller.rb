class WeighInsController < ActionController::Base

  def new
    @weigh_in = WeighIn.new
    @user = User.find(params[:user_id])
  end

  def create
    @weigh_in = WeighIn.new(weigh_in_params)
    @weigh_in.save
    redirect_to user_path
  end

  private 

    def weigh_in_params
      params.require(:weigh_in).permit(:current_weight)
    end
end