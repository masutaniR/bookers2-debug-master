class DailyMailer < ApplicationMailer
  def notify_user
    default to: -> { User.pluck(:email) }
    mail(subject: "Daily Mail Test!")
  end
end
