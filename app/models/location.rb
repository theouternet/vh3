class Location < ActiveRecord::Base
  has_many :drinks
  has_many :shares


end
