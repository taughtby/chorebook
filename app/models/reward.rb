class Reward < ActiveRecord::Base
  attr_accessible :child_id, :costs_points, :description, :image, :is_rewarded
end
