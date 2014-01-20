class AddAboutAndWeightToUser < ActiveRecord::Migration
  def up
  	add_column :users, :start_weight, :integer
  	add_column :users, :goal_weight, :integer
  end
end
