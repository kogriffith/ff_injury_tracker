module Teams
  class TeamResolver < GraphQL::Schema::Resolver

    type TeamType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      Team.find(id)
    end


  end
end