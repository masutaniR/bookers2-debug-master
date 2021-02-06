class DailyMailer < ApplicationMailer
  def notify_user
    mail(subject: "確認メール", bcc: User.pluck(:email))
  end
end
