class FailHardWorker
  include Sidekiq::Worker
  include Sidetiq::Schedulable
  sidekiq_options unique: true

  # recurrence { hourly }
  recurrence { minutely }

  def perform(name, count)
    sleep Random.rand(10)
    raise StandardError.new('failed')
  end
end
