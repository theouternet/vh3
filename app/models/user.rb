class User < ApplicationRecord
  has_many :shares 
  has_many :drinks, through: shares
end
