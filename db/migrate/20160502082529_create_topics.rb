class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.text :title
      t.text :text
      t.string :genre

      t.timestamps
    end
  end
end
