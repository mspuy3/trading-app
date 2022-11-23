class ApprovalMailer < ApplicationMailer
  layout 'mailer'
  def approve_user(email)
    mail(to: email, subject: 'You have been approved! Happy Trading!')
  end
end
