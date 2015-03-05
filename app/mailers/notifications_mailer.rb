class NotificationsMailer < ApplicationMailer

  def welcome(user)
    @name = user.name
    mail :to => user.email, :subject => "Welcome to the Recipe App"
  end

end
