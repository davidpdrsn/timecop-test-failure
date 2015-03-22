class User < ActiveRecord::Base
  def seen!
    update last_seen: Time.now
  end
end
