class RemoveUserIdIdFromWeighIns < ActiveRecord::Migration
  def change
    remove_column :weigh_ins, :user_id_id, :string
  end
end
