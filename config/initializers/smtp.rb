ActionMailer::Base.sendmail_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  domain:               'www.taiseiyamada.com',
  user_name:            ENV["GMAIL_EMAIL"],
  password:             ENV["GMAIL_PASSWORD"],
  authentication:       'plain',
  enable_starttls_auto: true  }
