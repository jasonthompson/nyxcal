FactoryGirl.define do
  factory :event do
    date_start DateTime.new(2014,3,15,9,0,0) 
    date_finish DateTime.new(2014,3,15,9,3,0)
    summary "Meet Keop"
  end
  factory :zoltar_event, class: Event do
    date_start DateTime.new(2014,3,15,11,30,0)
    date_finish DateTime.new(2014,3,15,12,15,0)
    summary "Defeat Zoltar"
  end
end
