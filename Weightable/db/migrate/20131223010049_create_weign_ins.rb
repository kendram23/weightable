class CreateWeignIns < ActiveRecord::Migration
  def change
    create_table :weign_ins do |t|
      t.references :Users
      t.datetime :datetime
      t.integer :current_weight 	
      t.timestamps
    end
  end
end
