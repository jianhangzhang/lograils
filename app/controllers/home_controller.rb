class HomeController < ApplicationController
  def index
		GetLogFromRedisJob.perform_later
  end
end
