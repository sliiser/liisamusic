class Mailer < ApplicationMailer
  layout 'mailer'

  def welcome_email(mail_user)
    @mail_user = mail_user
    mail(to: mail_user.email, subject: 'Welcome to liisamusic mailing list')
  end

  def unsubscribed(mail_user)
    @mail_user = mail_user
    mail(to: mail_user.email, subject: 'Successfully unsubscribed')
  end
end
