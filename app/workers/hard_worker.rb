class HardWorker
  include Sidekiq::Worker

  # recurrence { hourly(2) }
  # recurrence { minutely }

  def perform(name, count)
    sleep Random.rand(10)
    'Doing hard work'
  end
end
