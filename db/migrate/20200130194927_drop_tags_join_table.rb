class DropTagsJoinTable < ActiveRecord::Migration[5.2]
  def change
    drop_join_table :posts, :tags
  end
end
