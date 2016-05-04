class UsersController < ApplicationController
  @nickname = current_user.nickname

  #後でここをユーザーがライクしたもののみにする。
  @topics =Topic.all
end
