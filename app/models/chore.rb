class Chore < ActiveRecord::Base
  attr_accessible :child_id, :complete, :due_date, :name, :points
  
  belongs_to :child
  
  
 def add_points
   total_points =100
   if self.complete == true
     self.total_points += self.points
    end
 end
 

end
