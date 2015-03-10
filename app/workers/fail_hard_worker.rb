class FailHardWorker
  include Sidekiq::Worker
  include Sidetiq::Schedulable
  sidekiq_options unique: true

  recurrence { hourly }

  def perform(name, count)
    raise StandardError.new('failed')
  end
end
