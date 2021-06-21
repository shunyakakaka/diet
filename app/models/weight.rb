class Weight < ApplicationRecord
  validates :ini_weight, presence: true
  validates :day_weight, presence: true
end
