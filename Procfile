web: bundle exec unicorn -p $PORT -c ./config/unicorn.rb
worker:  bundle exec rake jobs:work
sidekiq: bundle exec sidekiq -c 5 -v
