class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :chef_id
      t.integer :meal_type_id
      t.integer :food_preference_id
      t.datetime :availability

      t.timestamps
    end
  end
end
