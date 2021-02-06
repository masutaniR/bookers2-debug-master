class Batch::SendMail
  def self.send_mail
    DailyMailer.notify_user.deliver_now
  end
end