class AddUserReferenceToWeighIns < ActiveRecord::Migration
  def change
    add_reference :weigh_ins, :user, index: true
  end
end
