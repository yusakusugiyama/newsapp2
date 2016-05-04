class LikesController < ApplicationController



  def create
    @like = Like.create(topic_id: params[:topic_id])
    @topics = Topic.all
  end

  def destroy
  end


end
