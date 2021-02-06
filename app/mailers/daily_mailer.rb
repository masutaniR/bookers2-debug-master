class DailyMailer < ApplicationMailer
  def notify_user
    default to: -> { User.pluck(:email) }
    mail(subject: "確認メール")
  end
end
