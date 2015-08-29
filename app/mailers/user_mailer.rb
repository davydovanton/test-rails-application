class UserMailer < ApplicationMailer
  def welcome_email
    @url  = 'http://example.com/login'
  end
end
