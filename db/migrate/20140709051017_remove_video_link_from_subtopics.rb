class RemoveVideoLinkFromSubtopics < ActiveRecord::Migration
  def change
    remove_column :subtopics, :video_link, :string
  end
end
