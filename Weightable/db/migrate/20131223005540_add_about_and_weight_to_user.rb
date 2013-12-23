class AddAboutAndWeightToUser < ActiveRecord::Migration
  def up
  	add_column :Users, :start_weight, :integer
  	add_column :Users, :goal_weight, :integer
  end
end
