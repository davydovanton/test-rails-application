class HardWorker
  include Sidekiq::Worker
  include Sidetiq::Schedulable
  sidekiq_options unique: true

  recurrence { hourly(2) }
  # recurrence { minutely }

  def perform(name, count)
    'Doing hard work'
  end
end
