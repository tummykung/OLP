require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  def test_registration_confirmation_email
    user = User.new(name: "Tum Chaturapruek", email: "tummykung@gmail.com", 
    	password: "yessir", password_confirmation: "yessir")
 
    # Send the email, then test that it got queued
    email = UserMailer.registration_confirmation(user).deliver
    assert !ActionMailer::Base.deliveries.empty?
 
    # Test the body of the sent email contains what we expect it to
    assert_equal [user.email], email.to
    assert_equal "Welcome to the Online Learning Platform!", email.subject
  end
end