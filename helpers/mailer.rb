require 'mailgun'

module Mailer

  SENDING_DOMAIN = "sandboxbb559fdee35f4d6fa990c7b24845a363.mailgun.org"

  def new_client
    Mailgun::Client.new 'key-9cd2b6fa8df130a7c505d784e1a82620'
  end

  def send_message(from, text)
    new_client.send_message SENDING_DOMAIN, {
      from: from,
      to: 'stbarrientos@gmail.com',
      subject: 'New Email From dcbouttephotography.com',
      text: text
    }
  end

end
