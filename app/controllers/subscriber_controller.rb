class SubscriberController < ApplicationController
  def index
  end

  def create
    subscriber_params = params.permit(:email) #permit isolates the email
    subscriber = Subscriber.new(subscriber_params)
    if subscriber.save
      head(:ok) #nocontet will say that we did it but there is nothing there (200 is okay)
    else
      head(:unprocessesable_entity) #if the email doesnt pass, or the database went down, this will return 422 (head to browser, no results)
    end

  end
end
