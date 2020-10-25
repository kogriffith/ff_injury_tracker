# == Schema Information
#
# Table name: divisions
#
#  id            :bigint           not null, primary key
#  conference_id :bigint
#  name          :string           not null
#
class Division < ApplicationRecord
  has_many :teams
  belongs_to :conference
end
