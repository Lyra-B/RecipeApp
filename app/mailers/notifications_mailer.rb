class NotificationsMailer < ApplicationMailer
  def welcome(user)
    @name = user.name
    mail :to => user.email, :subject => "Welcome to the Recipe App"
  end

  def recommend(email,obj)
    @obj = obj
    @email = email
    mail :to => @email, :subject => "Check this recipe!"
  end
end
