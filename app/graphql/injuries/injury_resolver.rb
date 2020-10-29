module Injuries
  class InjuryResolver < GraphQL::Schema::Resolver

    type InjuryType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      Injury.find(id)
    end

  end
end
