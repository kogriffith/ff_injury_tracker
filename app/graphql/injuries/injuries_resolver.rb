module Injuries
  class InjuriesResolver < GraphQL::Schema::Resolver
  
    type [InjuryType], null: false

    def resolve()
      Injury.all
    end

  end
end