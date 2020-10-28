# == Schema Information
#
# Table name: teams
#
#  id          :bigint           not null, primary key
#  division_id :bigint
#  name        :string           not null
#
class Team < ApplicationRecord
  has_many :players

end
