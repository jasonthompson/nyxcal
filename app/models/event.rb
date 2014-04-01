class Event < ActiveRecord::Base
  def self.on_day(args={})
    year, month, day = args[:year].to_i, args[:month].to_i, args[:day].to_i
    self.where('date_start' == Date.new(year, month, day))
  end
end
