class Event < ActiveRecord::Base
  def self.on_day(year, month, day)
    self.where('date_start' == Date.new(year.to_i, month.to_i, day.to_i))
  end
end
