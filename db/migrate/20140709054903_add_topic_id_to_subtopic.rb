class AddTopicIdToSubtopic < ActiveRecord::Migration
  def change
    # Add the parent topic ID to the subtopic controller
    # to ensure we can use the parent-child functions
    add_column :subtopics, :topic_id, :integer
  end
end
