Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  # Run rails dev:cache to toggle caching.
  if Rails.root.join('tmp', 'caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # MAiler
  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.default_url_options = { host:'localhost', port: '3000' }
  config.action_mailer.delivery_method = :mailgun
  #send email in dev mode
  config.action_mailer.perform_deliveries = true
  config.action_mailer.perform_caching = false
  config.action_mailer.raise_delivery_errors= true
  config.action_mailer.mailgun_settings = {
    api_key: 'cadc099e311db879a9b18abf474e6f39-f8b3d330-e22b054d',
    domain: 'sandbox59a01f4416d643679f4fdda55074af97.mailgun.org',
    # api_host: 'api.eu.mailgun.net'  # Uncomment this line for EU region domains
  }
  # ActionMailer::Base.mailgun_settings = {
  #   address:              'smtp.mailgun.org',
  #   port:                 587,
  #   user_name:            ENV["MAILGUN_SMTP_USER_NAME"],
  #   password:             ENV["MAILGUN_SMTP_PASSWORD"],
  #   authentication:       'plain',
  #   enable_starttls_auto: true  }

        # domain:               'gmail.com',

  config.action_view.embed_authenticity_token_in_remote_forms = true

  # Store uploaded files on the local file system (see config/storage.yml for options)
  config.active_storage.service = :local

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Highlight code that triggered database queries in logs.
  config.active_record.verbose_query_logs = true

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = false

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
end
