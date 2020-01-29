class CreatePostTagsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :post_tags_tables do |t|
      t.references :tag, foreign_key: true
      t.references :post, foreign_key: true
    end
  end
end
