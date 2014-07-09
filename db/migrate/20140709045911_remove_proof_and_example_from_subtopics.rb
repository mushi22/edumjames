class RemoveProofAndExampleFromSubtopics < ActiveRecord::Migration
  def change
    remove_column :subtopics, :proof, :text
    remove_column :subtopics, :example, :text
  end
end
