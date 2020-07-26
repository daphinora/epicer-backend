class CreateMenuRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_recipes do |t|
      t.integer :menu_id
      t.integer :recipe_id
      t.string :date
      # i don't need the :date bit lol getting the dates from the menu itself!
      t.string :meal
      t.string :weekday

      t.timestamps
    end
  end
end
