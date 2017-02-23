class TwitchUserCheckerJob < ApplicationJob
  queue_as :default

  def perform
    response = HTTParty.get("https://status.github.com/")
    html = Nokogiri::HTML(response.body)
    message = html.css('#message')[0]
    if message["class"] == "good"
      Subscriber.all.each do |subscriber|
        StatusMessageMailer.good(subscriber.email).deliver
      end
    else
      Subscriber.all.each do |subscriber|
        StatusMessageMailer.bad(subscriber.email).deliver
      end
    end

  end
end
