class HomeController < ApplicationController
  
  def index
    time_start = Date.new(2016,8,22).to_time.to_f
    time_now = Time.now.to_i - time_start
    # time_now = Date.new(2018,6,10).to_time.to_i - time_start
    time_end = Date.new(2019,6,10).to_time.to_i - time_start
    @percent = ((time_now/time_end).round(2)*100).to_i
    @pixels = @percent * 4
  end
end
