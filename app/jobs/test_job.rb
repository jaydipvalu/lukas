class TestJob < ApplicationJob
  queue_as :default

  def perform(user_id)
    # TestJob.perform_later test
    # Enqueue a job to be performed 1 week from now.
  UserMailer.welcome_email(user_id).deliver_now
  end
end
