class CreateWeighIns < ActiveRecord::Migration
  def change
    create_table :weigh_ins do |t|
      t.references :user, index: true
      t.datetime :datetime
      t.integer :current_weight 	
      t.timestamps
    end
  end
end
