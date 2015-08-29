class TestWorker2
  include Sidekiq::Worker

  def perform
  end
end
