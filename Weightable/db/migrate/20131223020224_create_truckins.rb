class CreateTruckins < ActiveRecord::Migration
  def change
    create_table :truckins do |t|
      t.references :users
      t.references :weigh_ins

      t.timestamps
    end
  end
end
