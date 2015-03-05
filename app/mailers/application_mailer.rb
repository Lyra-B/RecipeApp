class ApplicationMailer < ActionMailer::Base
  default from: "admin@wegotcoders.com", cc: "audit@wegotcoders.com"
  # layout 'mailer'
end
