class UsersController < ApplicationController

  def show
    @nickname = current_user.nickname

    #後でここをユーザーがライクしたもののみにする。
    @topics = Topic.all
  end

end
