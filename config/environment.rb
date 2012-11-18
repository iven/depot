# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Depot::Application.initialize!

Depot::Application.configure do
  config.action_mailer.smtp_settings = {
    address:              "smtp.gmail.com",
    port:                 587,
    domain:               "www.kissuki.com",
    authentication:       "plain",
    user_name:            "ivenvd",
    password:             "iven9988",
    enable_starttls_auto: true
  }
end
