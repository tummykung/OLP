class UserMailer < ActionMailer::Base
  default from: "olp-l@g.hmc.edu"
  default bcc: "tum_chaturapruek@hmc.edu"
  default_url_options[:host] = "https://muddsd-olp.herokuapp.com"
  
  def registration_confirmation(user)
    @user = user
    # attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    mail to: "#{user.name} <#{user.email}>", subject: "Welcome to the Online Learning Platform!"
  end
end