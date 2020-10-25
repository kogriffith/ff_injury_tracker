class Player < ApplicationRecord
  has_many :injuries
  belongs_to :team
end