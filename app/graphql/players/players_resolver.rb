module Players
  class PlayersResolver < GraphQL::Schema::Resolver

    type [PlayerType], null: false

    #argument :team_name, String, required: true

    #def resolve(team_name:)
      #Player.where(name: :team_name)
    #end

    def resolve()
      Player.all
    end

  end
end