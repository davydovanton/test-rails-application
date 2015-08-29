class TestWorker1
  include Sidekiq::Worker

  def perform
  end
end
