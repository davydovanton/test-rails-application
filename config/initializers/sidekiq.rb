require 'sidekiq'

Sidekiq.configure_client do |config|
  config.redis = { size: 1, url: ENV["REDISTOGO_URL"] }
end

Sidekiq.configure_server do |config|
  config.redis = { size: 2, url: ENV["REDISTOGO_URL"] }
end

Sidekiq::History.configure do |config|
  config.log_file = 'config/sidekiq.log'
end
