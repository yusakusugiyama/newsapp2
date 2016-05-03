class Like < ActiveRecord::Base
  belogs_to :topic, counter_cache: :likes_count
end
