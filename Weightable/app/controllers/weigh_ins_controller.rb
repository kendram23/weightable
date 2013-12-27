class WeighInsController < ActionController::Base

  def show
  end

  def new
    @weigh_in = WeighIn.new
    @weigh_in.user_id = current_user.id
    @user = User.find(current_user)
  end

  def create
    @weigh_in = current_user.weigh_ins.build(weigh_in_params)
    
    respond_to do |format|
      if @weigh_in.save
        format.html {redirect_to user_path(current_user.id), notice: 'WeighIn was succesfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  private 

    # Never trust parameters from the scary internet, only allow the white list through.
    def weigh_in_params
      params.require(:weigh_in).permit(:current_weight, :user_id)
    end
end