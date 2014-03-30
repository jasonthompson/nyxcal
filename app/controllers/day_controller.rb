class DayController < ApplicationController
  def view
    require 'ostruct'
    event1 = OpenStruct.new
    event1.time = "10:30"
    event1.description = "Meeting with Zoltar"
    event2 = OpenStruct.new
    event2.time = "12:00"
    event2.description = "lunch with Keop"
    @events = [event1, event2] 
  end
end
