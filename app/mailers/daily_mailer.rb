class DailyMailer < ApplicationMailer
  def notify_user
    mail(subject: "everyday Bookers!yay!", bcc: User.pluck(:email))
  end
end
