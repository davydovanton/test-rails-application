class FailHardWorker
  include Sidekiq::Worker
  include Sidetiq::Schedulable
  sidekiq_options unique: true

  recurrence { hourly }
  # recurrence { minutely }

  def perform(name, count)
    'Doing hard work'
  end
end
