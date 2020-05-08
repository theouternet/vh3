class Drink < ApplicationRecord
  has_many :shares

  has_many :locations, through: :shares
  has_many :users, through: :shares
end
