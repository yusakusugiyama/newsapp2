class LikesController < ApplicationController



  def create
    Like.create(topic_id: params[:topic_id], user_id: current_user.id)
    redirect_to controller: :topics, action: :index
  end

  def destroy
    like = Like.find_by(topic_id: params[:topic_id],user_id:current_user.id)

    if like.user_id == current_user.id
      like.destroy
    end
    redirect_to controller: :topics, action: :index
  end

  def new
    
  end

  private
    def tweet_params
      params.permit(:topic_id)
    end






end
