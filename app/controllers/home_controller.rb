class HomeController < ApplicationController
  def index
		@x = Log.first
  end
end
