class AddWeighInImageToWeighIns < ActiveRecord::Migration
  def change
    add_column :weigh_ins, :weigh_in_image, :string
  end
end
