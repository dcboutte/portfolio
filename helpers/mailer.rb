require 'mailgun'

# Module in charge of sending emails through the contact page to the site admin
module Mailer
  SENDING_DOMAIN = 'dcbouttephotography.com'.freeze
  CLIENT = Mailgun::Client.new 'key-9cd2b6fa8df130a7c505d784e1a82620'

  def send_message(from, text)
    CLIENT.send_message SENDING_DOMAIN,
                        from: from,
                        to: 'dcbouttephotography@gmail.com',
                        subject: 'New Email From dcbouttephotography.com',
                        text: text
  end
end
