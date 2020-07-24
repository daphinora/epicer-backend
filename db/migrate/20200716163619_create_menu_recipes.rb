class CreateMenuRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_recipes do |t|
      t.integer :menu_id
      t.integer :recipe_id
      t.string :date
      t.string :meal
      t.string :weekday

      t.timestamps
    end
  end
end
