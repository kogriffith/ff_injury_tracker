module Injuries
  class InjuryType < GraphQL::Schema::Object

  field :id, ID, null: false
  field :name, String, null: false
  field :body_location, String, null: false
  field :injury_type, String, null: false
  field :severity, String, null: false
  field :turf_type, String, null: false
  field :expected_recovery_time, Integer, null: false
  field :contact, Boolean, null: false
  field :occured, GraphQL::Types::ISO8601Date, null: false


  end
end