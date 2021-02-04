class ThanksMailer < ApplicationMailer
  default from: 'no-reply@gmail.com'

  def complete_mail(user)
    @user = user
    @url = "https://f65dfe0ccef549ff9a8916c6015f317b.vfs.cloud9.us-east-1.amazonaws.com/users/#{@user.id}"
    mail(subject: "会員登録完了のお知らせ", to: @user.email)
  end
end
