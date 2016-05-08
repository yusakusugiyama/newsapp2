class TopicsController < ApplicationController


  def index
    @topics_p1 = Topic.where(genre: "programming").limit(5).order('id DESC')
    @topics_a1 = Topic.where(genre: "addiction").limit(10).order('id DESC')
    @topics_p2 = Topic.where(genre: "programming2").limit(5).order('id DESC')
    
  end

  def show
    @topic = Topic.find(params[:id])

  end

end
