class GetLogFromRedisJob < ActiveJob::Base
  queue_as :redis_queue

  def perform(*args)
    # Do something later
		x = Log.new
		x.log_raw = '1'
		x.logstash_raw = '2'
		x.save
  end
end

GetLogFromRedisJob.perform_later record
#GetLogFromRedisJob.set(wait: 10.seconds).perform_later
