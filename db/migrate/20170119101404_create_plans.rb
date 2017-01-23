class CreatePlans < ActiveRecord::Migration[5.0]
  def change
    create_table :plans do |t|
      t.string :day
      t.string :activity
      t.integer :time

      t.timestamps
    end
  end
end
