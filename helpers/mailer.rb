require 'mailgun'

# Module in charge of sending emails through the contact page to the site admin
module Mailer
  SENDING_DOMAIN = 'dcbouttephotography.com'.freeze
  CLIENT = Mailgun::Client.new ENV['MAILGUN_API_KEY']

  def send_message(from, text)
    CLIENT.send_message SENDING_DOMAIN,
                        from: from,
                        to: 'dcbouttephotography@gmail.com',
                        subject: 'New Email From dcbouttephotography.com',
                        text: text
  end
end
