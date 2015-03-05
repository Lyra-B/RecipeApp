class User < ActiveRecord::Base
  after_create do
    NotificationsMailer.welcome(@user).deliver_now
  end
end
