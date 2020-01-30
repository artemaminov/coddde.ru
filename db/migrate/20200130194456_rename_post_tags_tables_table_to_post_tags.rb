class RenamePostTagsTablesTableToPostTags < ActiveRecord::Migration[5.2]
  def change
    rename_table('post_tags_tables', 'post_tags')
  end
end
