class User < ActiveRecord::Base
  after_create do
    NotificationsMailer.welcome(self).deliver_now
  end
end
