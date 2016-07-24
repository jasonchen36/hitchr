require 'ffaker'

FactoryGirl.define do
  factory :ride do

    date { Time.now }
    time { Time.now }
    seats_available { rand(1..4)}
    comments { FFaker::LoremFR.phrase }
    start_location { ["Toronto, ON, Canada", "Ottawa, ON, Canada", "Vancouver, BC, Canada"].sample } # eventually generate a city that isn't an end location / vice-versa
    end_location{ ["Halifax, NS, Canada", "Montreal, QC, Canada", "Oshawa, ON, Canada"].sample }
  end

end
