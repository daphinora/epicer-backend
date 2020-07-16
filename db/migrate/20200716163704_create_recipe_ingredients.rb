class CreateRecipeIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_ingredients do |t|
      t.string :recipe_id
      t.string :ingredient_id
      t.string :amount

      t.timestamps
    end
  end
end
