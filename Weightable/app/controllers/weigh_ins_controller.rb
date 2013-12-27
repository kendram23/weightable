class WeighInsController < ActionController::Base

  def new
    @weigh_in = WeighIn.new
    @weigh_in.user_id = current_user.id
  end

  def create
    @weigh_in = WeighIn.new(weigh_in_params)
    @weigh_in.save
    redirect_to user_path(current_user.id)
  end

  private 

    def weigh_in_params
      params.require(:weigh_in).permit(:current_weight, :user_id)
    end
end