# == Schema Information
#
# Table name: injuries
#
#  id            :bigint           not null, primary key
#  player_id     :bigint
#  name          :string           not null
#  body_location :string           not null
#  type          :string           not null
#  severity      :string           not null
#  occured       :date             not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Injury < ApplicationRecord
  belongs_to :player

end
