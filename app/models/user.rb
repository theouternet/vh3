class User < ActiveRecord::Base
  has_many :shares 
  has_many :drinks, through: shares
end
