# == Schema Information
#
# Table name: places
#
#  id         :bigint           not null, primary key
#  coordinate :geography        not null, point, 4326
#  locale     :string           not null
#  name       :string           not null
#  place_type :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :place do
    locale { "en" }
    coordinate { "POINT (1 2 3)" }
    name { ["La Fantasia", "AirCoffee"].sample }
    place_type { "coffee_shop" }
  end
end
