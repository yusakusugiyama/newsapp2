class TopicsController < ApplicationController

  def index
    @topics = Topic.limit(50).order('id DESC')

  end

  def show
    @topic = Topic.find(params[:id])

  end

end
