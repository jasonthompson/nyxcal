require_relative "../models/event"

class DayDecorator
  attr_reader :events

  def initialize(args)
    @events = Event.on_day(args)
    @year = args[:year].to_i
    @month = args[:month].to_i
    @day = args[:day].to_i
  end

  def title
    Date.new(@year, @month, @day).strftime(ENV["DATE_FMT"])
  end
end
