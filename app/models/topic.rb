class Topic < ActiveRecord::Base
  has_many :likes
  
  def like_user(user_id)
   likes.find_by(user_id: user_id)
  end

  def find_like_user(user_id)
   likes.find_by(user_id: user_id)
  end
end
