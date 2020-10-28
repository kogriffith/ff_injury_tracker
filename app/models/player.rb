# == Schema Information
#
# Table name: players
#
#  id             :bigint           not null, primary key
#  team_id        :bigint
#  name           :string           not null
#  type           :string           not null
#  position       :string           not null
#  birthday       :date             not null
#  time_in_league :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Player < ApplicationRecord
  has_many :injuries
  belongs_to :team

  def calculateTimeInLeague(birthday)
    league_time = Date.today.year - birthday.year
  end

end
