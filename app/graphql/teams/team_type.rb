module Teams
  class TeamType < GraphQL::Schema::Object
    
    field :id, ID, null: false
    field :name, String, null: false
    field :players, [Players::PlayerType], null: false

  end
end