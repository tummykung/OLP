ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => ENV['app8782010@heroku.com'],
  :password       => ENV['gey1ivwh'],
  :domain         => 'heroku.com'
}
ActionMailer::Base.delivery_method = :smtp