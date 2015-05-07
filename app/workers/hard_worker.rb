class HardWorker
  include Sidekiq::Worker
  include Sidetiq::Schedulable

  # recurrence { hourly(2) }
  # recurrence { minutely }

  def perform(name, count)
    sleep Random.rand(10)
    'Doing hard work'
  end
end
