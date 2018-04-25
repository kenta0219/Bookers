class AddTitleToBookImages < ActiveRecord::Migration[5.1]
  def change
    add_column :book_images, :title, :string
    add_column :book_images, :body, :string
  end
end
