class CreateSubtopics < ActiveRecord::Migration
  def change
    create_table :subtopics do |t|
      t.string :name
      t.text :description
      t.string :video_link
      t.text :proof
      t.text :example

      t.timestamps
    end
  end
end
