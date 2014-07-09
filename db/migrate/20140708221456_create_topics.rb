class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.text :description
      t.belongs_to :course
      t.timestamps
    end
  end
end
