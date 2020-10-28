module Players
  class PlayerType < GraphQL::Schema::Object

  field :id, ID, null: false
  field :name, String, null: false 
  field :player_type, String, null: false
  field :birthday, GraphQL::Types::ISO8601Date, null: false
  field :time_in_league, Integer, null: false
  #field :injuries, [Types::InjuryType], null: true

  end
end