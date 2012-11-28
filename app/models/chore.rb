class Chore < ActiveRecord::Base
  attr_accessible :child_id, :complete, :due_date, :name, :points
end
