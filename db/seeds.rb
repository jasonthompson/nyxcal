# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

events = [{ date_start: "2014-03-15T9:0:0",
            date_finish: "2014-03-15T9:30:0",
            summary: "Meeting with Keop" },

          { date_start: "2014-03-15T12:0:0",
            date_finish: "2014-03-15T12:30:0",
            summary: "Defeat Zoltar" }]

events.each do |e|
  Event.create(e)
end
