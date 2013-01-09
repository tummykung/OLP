class UserMailerTest < ActionMailer::TestCase
  def test_rregistration_confirmation_email
    user = users(:some_user_in_your_fixtures)
 
    # Send the email, then test that it got queued
    email = UserMailer.registration_confirmation(user).deliver
    assert !ActionMailer::Base.deliveries.empty?
 
    # Test the body of the sent email contains what we expect it to
    assert_equal [user.email], email.to
    assert_equal "Welcome to the Online Learning Platform!", email.subject
  end
end