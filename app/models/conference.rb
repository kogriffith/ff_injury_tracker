# == Schema Information
#
# Table name: conferences
#
#  id   :bigint           not null, primary key
#  name :string           not null
#
class Conference < ApplicationRecord
  has_many :divisions

end
