ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address: 'smtp.gmail.com',
  domain: 'gmail.com',
  port: 587,
  user_name: 'mstnryk@gmail.com',
  password: ENV['SECRET_KEY'],
  authentication: 'plain',
  enable_starttls_auto: true
}