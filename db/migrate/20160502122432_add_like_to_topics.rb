class AddLikeToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :like, :boolean, default: false
  end
end
