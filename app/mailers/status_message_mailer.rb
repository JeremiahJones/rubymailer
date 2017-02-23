class StatusMessageMailer < ApplicationMailer
  default({ from: 'jeremiah@me.com' })
  def good(to_email)
    mail({ to: to_email })
  end

  def bad(to_email)
    mail({ to: to_email })
  end
end
