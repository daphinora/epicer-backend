class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :cook_time
      t.string :image
      t.string :instructions

      t.timestamps
    end
  end
end
