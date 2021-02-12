if Rails.env.production?
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
elsif Rails.env.development?
  ActionMailer::Base.default_url_options = { host: 'f65dfe0ccef549ff9a8916c6015f317b.vfs.cloud9.us-east-1.amazonaws.com' }
  ActionMailer::Base.perform_caching = true
  ActionMailer::Base.delivery_method = :letter_opener_web
  ActionMailer::Base.perform_deliveries = true
else
  ActionMailer::Base.delivery_method = :test
end