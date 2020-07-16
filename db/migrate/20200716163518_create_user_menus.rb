class CreateUserMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :user_menus do |t|
      t.string :user_id
      t.string :menu_id

      t.timestamps
    end
  end
end
