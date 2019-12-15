ActionMailer::Base.smtp_settings = {
  address: "smtp.gmail.com",
  port: 587,
  user_name: ENV['GMAIL_EMAIL'],
  password: ENV['GMAIL_APP_PASSWORD'],
  authentication: 'plain',
  :openssl_verify_mode  => 'none',
  enable_starttls_auto: true
}