class LikesController < ApplicationController

  def index
    @topics = Topic.limit(50).order('id DESC')
    
  end

  def create
    @like = Like.create(topic_id: params[:topic_id])
    @likes = Like.where(topic_id: params[:topic_id])
    @topics = Topic.all
  end

  def destroy
  end


end
