class UserWorker
  include Sidekiq::Worker

  def perform(user)
    user.name
  end
end
