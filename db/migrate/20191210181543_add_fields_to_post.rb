class AddFieldsToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :author, :string
    change_column_null :posts, :author,false

    add_column :posts, :title, :string
    change_column_null :posts, :title, false

    add_column :posts, :announce, :text, limit: 120

    add_column :posts, :body, :text
    change_column_null :posts, :body, false

    add_column :posts, :status, :integer, default: 0
    add_reference :posts, :hero_image, foreign_key: true
    add_reference :posts, :tags, foreign_key: true
  end
end
