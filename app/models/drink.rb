class Drink < ActiveRecord::Base
  has_many :shares

  validates :name, presence: true

  has_many :locations, through: :shares
  has_many :users, through: :shares
end
