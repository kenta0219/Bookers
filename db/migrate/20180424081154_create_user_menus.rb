class CreateUserMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :user_menus do |t|
      t.integer :profile_image_id
      t.string :name

      t.timestamps
    end
  end
end
