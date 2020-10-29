module Injuries
  class InjuriesType < GraphQL::Schema::Object

    field :injuries, [Types::InjuryType], null: false

  end
end