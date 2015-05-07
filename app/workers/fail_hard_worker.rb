class FailHardWorker
  include Sidekiq::Worker
  include Sidetiq::Schedulable

  # recurrence { hourly }
  # recurrence { minutely }

  def perform(name, count)
    sleep Random.rand(10)
    raise StandardError.new('failed')
  end
end
