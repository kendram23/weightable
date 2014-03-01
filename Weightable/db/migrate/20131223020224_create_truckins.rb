class CreateTruckins < ActiveRecord::Migration
  def change
    create_table :truckins do |t|
      t.references :user, index: true
      t.references :weigh_in, index: true
      t.timestamps
    end
  end
end
