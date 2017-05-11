class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def timeSheet
    time = Time.new(1,1,1,18,0,0)
    night_start = time.strftime("%H")
    time2 = Time.new(1,1,1,6,0,0)
    day_start = time2.strftime("%H")
  end
end
