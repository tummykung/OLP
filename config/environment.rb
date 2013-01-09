# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
OLP::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => "mudddsd-olp",
  :password => "a1s2d3f4g5",
  :domain => "mudddsd-olp.herokuapp.com",
  :address => "smtp.sendgrid.net",
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
