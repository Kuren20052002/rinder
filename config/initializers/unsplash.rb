require "ostruct"

Unsplash.configure do |config|
  config.application_access_key = Rails.application.credentials.unsplash[:access_key]
  config.application_secret = Rails.application.credentials.unsplash[:secret_key]
  config.application_redirect_uri = "http://localhost:3000/oauth/callback"  # Local development redirect URI
  config.utm_source = "rinder"

  # Optional: custom logger (useful for debugging)
  # config.logger = Rails.logger  # You can use Rails' built-in logger
end
