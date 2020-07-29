class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.integer :recipe_id
      t.string :instruction

      t.timestamps
    end
  end
end
