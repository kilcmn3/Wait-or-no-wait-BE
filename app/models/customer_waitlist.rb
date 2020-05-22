require 'twilio-ruby'

class CustomerWaitlist < ApplicationRecord
  belongs_to :waitlist
  belongs_to :customer

  def self.send_SMS 
    account_sid = ENV['ACCOUNT_SID'] 
    auth_token = ENV['AUTH_TOKEN'] 
    client = Twilio::REST::Client.new(account_sid, auth_token)

    from = '+12067390173'  # Your Twilio number
    to = '+13479096835' # Your mobile phone number

    client.messages.create(
    from: from,
    to: to,
    body: "We're ready to serve you now!"
    )
  end
end
