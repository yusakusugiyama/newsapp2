class RemoveLikeFromTopics < ActiveRecord::Migration
  def change
    remove_column :topics, :like, :boolean
  end
end
