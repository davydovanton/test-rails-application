class FailHardWorker
  include Sidekiq::Worker
  include Sidetiq::Schedulable
  sidekiq_options retry: false

  # recurrence { hourly }
  recurrence { minutely }

  def perform(name, count)
    sleep Random.rand(10)
    raise StandardError.new('failed')
  end
end
