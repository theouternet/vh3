class Share < ActiveRecord::Base
 belongs_to :user
 belongs_to :drink
 belongs_to :location


 def location_name=(name)
    self.location = Location.find_or_create_by(name: name)
 end 

 def location_name 
    self.location ? self.location.name : nil 
 end 

def location_zip 
   self.location ? self.location.zip : nil
end


 def drink_name=(name)
    self.drink = Drink.find_or_create_by(name: name)
 end 

 def drink_name 
    self.drink ? self.drink.name : nil 
 end 


  
end
