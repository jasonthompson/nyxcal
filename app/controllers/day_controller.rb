require_relative '../decorators/day_decorator'

class DayController < ApplicationController
  def view
    @day = DayDecorator.new(params)
  end

end
