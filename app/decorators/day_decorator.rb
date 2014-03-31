require_relative "../models/event"

class DayDecorator
  attr_reader :events

  def initialize(args)
    @year = args[:year].to_i
    @month = args[:month].to_i
    @day = args[:day].to_i
  end

  def events
    Event.on_day(@year, @month, @day)
  end

  def title
    Date.new(@year, @month, @day).strftime("%B %d %Y")
  end
end
