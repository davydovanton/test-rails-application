run_sidekiq_in_this_thread = %w(staging).include?(ENV['RAILS_ENV'])
worker_processes (run_sidekiq_in_this_thread ? 2 : 3)
# whatever you had in your unicorn.rb file
@sidekiq_pid = nil

before_fork do |server, worker|
  # ... whatever you had in your before_fork ...
  if run_sidekiq_in_this_thread
    @resque_pid ||= spawn("bundle exec sidekiq -c 2")
    Rails.logger.info('Spawned sidekiq #{@request_pid}')
  end
end
