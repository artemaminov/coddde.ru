class CreateTagsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :posts, :tags do |t|
       t.index [:post_id, :tag_id], unique: true
    end
  end
end
