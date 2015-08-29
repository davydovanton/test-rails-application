(1..15).each do |i|
  File.open("test_worker#{i}.rb", 'w') do |f|
    f.write <<WORKER
class TestWorker#{i}
  include Sidekiq::Worker
  sidekiq_options queue: :new

  def perform
  end
end
WORKER
  end
end

(1..15).each do |i|
  eval("TestWorker#{i}.perform_async")
end
