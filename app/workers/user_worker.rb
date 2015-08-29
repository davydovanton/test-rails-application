class UserWorker
  include Sidekiq::Worker
  sidekiq_options queue: :new

  def perform(user)
    user.name
  end
end
