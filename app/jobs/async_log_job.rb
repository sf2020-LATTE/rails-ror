class AsyncLogJob < ApplicationJob
  queue_as :default

  def perform(message: "nice job!")
    # Do something later
    AsyncLog.create!(message: message)
  end
end
