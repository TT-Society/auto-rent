class Rent < ApplicationRecord
  belongs_to :user
  belongs_to :plan

  has_many :depenses
end
