class UsersController < ApplicationController

  def show
    @topics = []
    likes = Like.where(user_id: current_user.id)
    likes.each do |like|
      topic = Topic.find_by(id: like.topic_id)
      @topics << topic
    end
  end

end
