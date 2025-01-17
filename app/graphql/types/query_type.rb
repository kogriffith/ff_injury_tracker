module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    #############################
    #Players API#
    #############################

    field :player, resolver: Players::PlayerResolver
    field :players, resolver: Players::PlayersResolver
    
    #############################
    #Injury API
    ############################

    field :injury, resolver: Injuries::InjuryResolver
    field :injuries, resolver: Injuries::InjuriesResolver
    
    #############################
    #Team API
    #############################
    
    field :team, resolver: Teams::TeamResolver
  end
end
