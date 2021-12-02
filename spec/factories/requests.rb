FactoryBot.define do
  factory :request do
    remote_ip { FFaker::Internet.ip_v4_address }
    scheme { FFaker::SportUS.name}
    query_string { FFaker::Skill.specialty}
    query_params { FFaker::Tweet.body }
    cookies { FFaker::Vehicle.make}
    headers { FFaker::Venue.name }
    trap_id { FFaker::Random.rand(999)}
  end
end
