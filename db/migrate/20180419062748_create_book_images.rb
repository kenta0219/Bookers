class CreateBookImages < ActiveRecord::Migration[5.1]
  def change
    create_table :book_images do |t|
      t.integer :user_name
      t.text :image_id
      t.text :introduction

      t.timestamps
    end
  end
end
